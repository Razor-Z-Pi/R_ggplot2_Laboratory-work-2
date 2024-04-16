library(ggplot2)

summary(iris)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  geom_smooth(method = "loess", colour = "black") +
  geom_smooth() +
  labs(
    title = "Связь длины и ширины чашелистника Ирисов Фишера",
    x = "Длина чашелистника, см",
    y = "Ширина чашелистника, см",
    content = "Вид ириса",
    color='Вид ириса'
  )