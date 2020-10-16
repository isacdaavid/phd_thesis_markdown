# Apéndice 1: Demostraciones para la regresión lineal {.unnumbered}

## Prueba 1: Función de log-verosimilitud {.unnumbered}

$$ ln(\mathcal{L}(\bm{y}, \theta)) = ln \left( \prod_{i=1}^{n} \mathcal{N}(\mu,\sigma^2) \right) = \sum_{i=1}^{n} ln\left[ \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{1}{2}\left( \frac{y_i - \mu}{\sigma}\right)^2} \right] $$

$$ = \sum_{i=1}^{n} ln\left(\frac{1}{\sigma\sqrt{2\pi}}\right) + \sum_{i=1}^{n} ln\left( e^{-\frac{1}{2}\left( \frac{y_i - \mu}{\sigma}\right)^2} \right) $$

$$ = -n\;ln(\sigma\sqrt{2\pi}) + \sum_{i=1}^{n} -\frac{1}{2}\left( \frac{y_i - \mu}{\sigma} \right)^2 $$

$$ = -n\;ln((2\pi\sigma^2)^{1/2}) -\frac{1}{2\sigma^2} \sum_{i=1}^{n} \left( y_i - \mu \right)^2 $$

$$ = -\frac{n}{2}\;ln(2\pi\sigma^2) -\frac{1}{2\sigma^2} \sum_{i=1}^{n} \left( y_i - \underbrace{x_i\theta}_{\mu} \right)^2 $$

## Prueba 2: $\hat{\theta}$ por MLE (ecuación normal) {.unnumbered}

$$ \hat{\theta} = arg_\theta max \;\; ln(\mathcal{L}) = \left\{ \theta : 0 = \frac{\partial ln(\mathcal{L})}{\partial\theta} \right\} $$

$$ 0 = -\frac{1}{2\sigma^2} \sum_{i=1}^{n} 2(y_i - x_i\theta)(-x_i) $$

$$   = \frac{1}{\sigma^2}\sum_{i=1}^n (x_i y_i - x_i^2 \theta) $$

$$   = \sum_{i=1}^n x_i y_i - \theta \sum_{i=1}^n x_i^2 $$

$$ \hat{\theta} = \frac{\sum_{i=1}^n x_i y_i}{\sum_{i=1}^n x_i^2} = \frac{ \bm{x} \cdot \bm{y} }{ \bm{x} \cdot \bm{x} } = \frac{Cov(x,y)}{Var(x)}$$

## Prueba 3: $\hat{\sigma}^2$ por MLE {.unnumbered}

$$ \hat{\sigma}^2 = arg_{\sigma^2} max \;\; ln(\mathcal{L}) = \left\{ \sigma^2 : 0 = \frac{\partial ln(\mathcal{L})}{\partial\sigma^2} \right\} $$

$$ 0 = -\frac{n}{2}\left( \frac{1}{2\pi\sigma^2} \right)(2\pi) + \frac{1}{\sigma^4}\left( \frac{1}{2}\sum_{i=1}^n(y_i-\mu)^2\right) $$

$$ = -\frac{n}{2\sigma^2} + \frac{1}{2\sigma^4} \sum_{i=1}^n(y_i-\mu)^2 $$

$$ = \frac{1}{2\sigma^2} \left( \frac{1}{\sigma^2}\sum_{i=1}^n(y_i-\mu)^2 -n \right) = \frac{1}{\sigma^2}\sum_{i=1}^n(y_i-\mu)^2 - n $$

$$ \hat{\sigma}^2 = \frac{1}{n} \sum_{i=1}^{n} (y-\mu)^2 = Var(y) $$


# Apéndice 2: código fuente {.unnumbered}

## Métodos de análisis {.unnumbered}

Pipeline reproducible y reutilizable disponible en
[https://github.com/isacdaavid/np-mvpa](https://github.com/isacdaavid/np-mvpa).

## Este documento {.unnumbered}

El código fuente y las figuras para generar este documento se
encuentran disponibles bajo una licencia libre en
[https://github.com/isacdaavid/phd_thesis_markdown](https://github.com/isacdaavid/phd_thesis_markdown). Plantilla
provista por @pollard-et-al-2016.

## Otras figuras {.unnumbered}

\lstinputlisting[style=RCodeStyle,caption=Modelos predictivos de un solo voxel vs multivoxel. El siguiente programa en R fue utilizado para generar las figuras \ref{lm-vs-multivariate-1} y \ref{lm-vs-multivariate-2}. Además se incluye una breve demostración del clasificador SVM.]{source/figures/lm-vs-multivariate.R}
