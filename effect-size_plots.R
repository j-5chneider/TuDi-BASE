ggplot(data = data.frame(x = c(-3, 3)), aes(x)) +
  stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), 
                geom = "area", fill = "#d0d4d4", color = "#d0d4d4", alpha = .5) + 
  geom_vline(aes(xintercept = 0), color = "white", linetype = "dotted", size = 1.5) +
  geom_label(x=-2, y=.3, label="ohne \n Gamification", color = 'white', fill = "#d0d4d4", fontface = "bold") +
  stat_function(fun = dnorm, n = 101, args = list(mean = .504, sd = 1),                     # effect size = .504
                geom = "area", fill = "#ff857a", color = "#ff857a", alpha = .5) + 
  geom_vline(aes(xintercept = .504), color = "white", linetype = "dotted", size = 1.5) +
  geom_label(x=2.2, y=.3, label="mit \n Gamification", color = 'white', fill = "#ff857a", fontface = "bold") +
  scale_x_continuous(breaks = c(-2:+2), labels = c("- -", "-", "Lernerfolg", "+", "++")) +
  scale_y_continuous(expand = c(0,0)) +
  theme_minimal() +
  theme(panel.grid = element_blank(),
        axis.ticks.x = element_line(color = "#666666"),
        axis.line.x = element_line(color = "#666666"),
        axis.title.y = element_blank(),
        axis.title.x = element_blank(),
        axis.text.y = element_blank(),
        axis.text.x = element_text(face = "bold"))


ggsave("www/gam_eff.jpg",
       width = 8,
       height = 3,
       units = "mm",
       scale = 13,
       dpi = 250)
