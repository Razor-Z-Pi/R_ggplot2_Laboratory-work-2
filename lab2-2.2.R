library(ggplot2)
library(plotly)

summary(CO2)

plot_ly(CO2, x = ~conc, color = ~Type) %>%
  add_markers(y = ~uptake) %>%
  add_lines(y = ~uptake) %>%
  layout(title = 'Поглощение диоксида углерода травянистыми растениями',
         xaxis = list(title = 'Концентрация CO2 в окружающей среде (мл/л)'),
         yaxis = list(title = 'Скорость поглощения CO2 (ммоль/м^2 сек)'),
         legend = list(title = list(text = "Река")))