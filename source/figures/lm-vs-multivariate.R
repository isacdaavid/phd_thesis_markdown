library(ggplot2)
## library(cowplot)
library(e1071) # svm classifier

set.seed(111)
N <- 40
CONDITIONS <- c("A", "B")

## uniformly sample N points within (0,1)x(0,1)
data <- data.frame(replicate(2, runif(N)))
colnames(data) <- c("voxel_1", "voxel_2")

## divide space into 2 condition regions according to some boundary relation
label <- function(p) {
    ## showcase nonlinear capabilities: circle of area .5 centered at (.5, .5)
    diameter <- .5 / pi
    if ((p["voxel_1"] - .5)**2 > diameter - (p["voxel_2"] - .5)**2) {
        CONDITIONS[1]
    } else {
        CONDITIONS[2]
    }
}
data <- cbind(data, cond = apply(data, 1, label)) # label each point
## reorder according to label, for visual convenience
data <- data[with(data, order(cond)), ]

## plot single-voxel models
lm_plot <- function(data, xname, yname, remove_ytext = FALSE) {
    model <- summary(lm(paste0(yname, "~", xname),
                         data))
    beta1 <- model$coefficients[paste0(xname, "B"), "Estimate"]
    beta0 <- model$coefficients["(Intercept)", "Estimate"]
    p <- model$coefficients[paste0(xname, "B"), "Pr(>|t|)"]
    plot <- ggplot(data, aes(x = data[, xname],
                             y = data[, yname],
                             color = data[, xname])) +
        labs(x = "Condition", y = "Intensity") +
        geom_violin() +
        geom_jitter(width = .1, size = 3) +
        geom_abline(slope = beta1,
                    intercept = beta0) +
        geom_text(color = "black",
                  angle = atan(beta1) * (180 / pi) * 3.75,
                  aes(x = 1.5,
                      y = .5,
                      label = paste0("y=",
                                     round(beta1, 3),
                                     "x + ",
                                     round(beta0, 3),
                                     ", p=",
                                     round(p, 3)))) +
        theme(legend.position="none")
    if (remove_ytext) {
        plot <- plot + theme(axis.title.y = element_blank(),
                     axis.text.y = element_blank(),
                     axis.ticks.y = element_blank())
    }
    shapiro.test(data[data$cond == CONDITIONS[1], as.character(yname)])
    shapiro.test(data[data$cond == CONDITIONS[2],  as.character(yname)])
    plot
}

svg("./lm-vs-multivariate-1.svg")
cowplot::plot_grid(lm_plot(data, xname = "cond", yname = "voxel_1"), # no effect, p = .795
                   lm_plot(data, xname = "cond", yname = "voxel_2", TRUE), # no effect, p = .546
                   labels = c("Voxel 1", "Voxel 2"),
                   label_x = .5)
dev.off()

## summary(lm(formula = cond ~ voxel_1:voxel_2, data = data)) # no interaction

svg("./lm-vs-multivariate-2.svg")
ggplot(data, aes(x = voxel_1, y = voxel_2, color = cond, shape = cond)) +
    geom_point(size = 3) +
    labs(x = "Intensity (voxel 1)",
         y = "Intensity (voxel 2)",
         color = "Condition") +
    scale_color_discrete("") +
    scale_shape_manual("", values = c(16, 17))
dev.off()

indices <- sample(1:nrow(data), N/2)
model3 <- svm(cond ~ voxel_1 + voxel_2,
              data = data[indices, ],
              kernel = "radial",
              scale = FALSE,
              cost = 500)
predict(model3, data[-indices, ])
plot(model3, data)
