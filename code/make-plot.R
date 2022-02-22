library(ggplot2)

setwd("~/Year 3/R/Mbiol GitHub Assignment/output")
plot_df <- read.csv("average-rainfall.csv")

g <- ggplot(
  data = plot_df,
  mapping = aes(
    x = as.integer(month_num),
    y = average_rainfall,
    colour = location)) +
  geom_point() +
  geom_line() +
  labs(
    x = NULL,
    y = "Average rainfall (mm)",
    colour = "City",
    title = "Rainfall",
    subtitle = "Monthly average (1855--2015)") +
  scale_x_continuous(
    breaks = plot_df$month_num[seq(2,12,2)],
    labels = plot_df$month[seq(2,12,2)]) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = -45))

ggsave(filename = "C:/Users/Caleb/OneDrive - Nexus365/Documents/Year 3/R/Mbiol GitHub Assignment/output/result.png",
       plot = g,
       height = 10.5, width = 14.8,
       units = "cm")
