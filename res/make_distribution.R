library(igraph)
library(ggplot2)
make_distribution <- function(x) { x/ sum(x)}

# Fig2 in the supplement material
g <- graph.lattice(c(5, 4))
g <- connect.neighborhood(g, 1)

V(g)$infected <- ifelse(V(g) %in% c(3, 7, 8, 9, 10, 13), 1, 0)
plot(g, vertex.color = V(g)$infected)

mydata = read.table("~/dipl/res/supfig2/supfib2-109")
p <- plot(c(1:20), mydata$V1, 
     ylim = c(0, 0.40),
     xlim = c(1, 20),
          xlab='source id', ylab ='P(source = id | R = r, T = 5, pj = 0.2, q = 0.3)')
# p + scale_y_continuous(breaks = seq(0:0.05:0.35))
# p + scale_x_continuous(breaks = c(1:20))

