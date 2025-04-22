library(ggplot2)
df <- data.frame(
  x = rep(1:10, 2),
  y = c((1:10)^1.2, (1:10)^1.5),
  group = rep(c("A", "B"), each = 10)
)
p <- ggplot(df, aes(x = x, y = y, color = group, shape = group, linetype = group)) 
  geom_point(size = 3) 
  geom_line(size = 1) 
  scale_color_manual(values = c("A" = "darkorange", "B" = "steelblue"),
                     labels = c("Alpha Group", "Beta Group"),
                     name = "Line Color") 
  scale_shape_manual(values = c("A" = 17, "B" = 19), 
                     labels = c("Alpha Group", "Beta Group"),
                     name = "Point Shape") 
  scale_linetype_manual(values = c("A" = "dotted", "B" = "solid"),
                        labels = c("Alpha Group", "Beta Group"),
                        name = "Line Type") 
  guides(
    color = guide_legend(order = 1, override.aes = list(size = 4)),
    shape = guide_legend(order = 2),
    linetype = guide_legend(order = 3)
  ) 
  
  labs(title = "Customized Legend Example in ggplot2") 
print(p)

