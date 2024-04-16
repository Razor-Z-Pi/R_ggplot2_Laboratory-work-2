library(ggplot2)
library(plotly)

summary(CO2)

item2 <- ggplot(CO2, aes(x = conc, y = uptake, color = Type)) +
  geom_point(aes(fill = I("blue"))) +
  geom_area() +
  geom_line() +
  labs(
    title = "Поглощение диоксида углерода травянистыми растениями",
    x = "Концентрация CO2 в окружающей среде (мл/л)",
    y = "Скорость поглощения CO2 (ммоль/м^2 сек)",
    color = "Река"
  )

ggplotly(item2)