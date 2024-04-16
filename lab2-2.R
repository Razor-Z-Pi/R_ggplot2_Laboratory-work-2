library(ggplot2)

summary(CO2)

ggplot(CO2, aes(x = conc, y = uptake, color = Type)) +
  geom_point() +
  geom_area() +
  geom_line() +
  labs(
    title = "Поглощение диоксида углерода травянистыми растениями",
    caption = "Данные",
    x = "Концентрация CO2 в окружающей среде (мл/л)",
    y = "Скорость поглощения CO2 (ммоль/м^2 сек)",
    color = "Река",
    tag = "Второй",
  )