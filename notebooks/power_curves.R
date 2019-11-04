#library(pwr) # for power calcs
library(dplyr) # for data manipulation
library(tidyr) # for data manipulation
library(ggplot2) # for plotting power curves
library(gridExtra)

# Generate power calculations
ptab <- cbind(NULL, NULL)       

for (i in seq(0,1, length.out = 200)){
  pwrt1 <- power.t.test(n = 100, 
                        sig.level = 0.05, power = NULL, 
                        delta = i, alternative="two.sided")
  
  pwrt2 <- power.t.test(n = 100, 
                        sig.level = 0.05, power = NULL, 
                        delta = i*0.5, alternative="two.sided")
  pwrt3 <- power.t.test(n = 100, 
                        sig.level = 0.05, power = NULL, 
                        delta = i*0.6, alternative="two.sided")
  
  pwrt4 <- power.t.test(n = 100, 
                        sig.level = 0.05, power = NULL, 
                        delta = i*0.7, alternative="two.sided")
  pwrt5 <- power.t.test(n = 100, 
                        sig.level = 0.05, power = NULL, 
                        delta = i*0.8, alternative="two.sided")
  pwrt6 <- power.t.test(n = 100, 
                        sig.level = 0.05, power = NULL, 
                        delta = i*0.9, alternative="two.sided")
  ptab <- rbind(ptab, cbind(pwrt1$delta, pwrt1$power,
                            i, pwrt2$power,
                            i, pwrt3$power,
                            i, pwrt4$power,
                            i, pwrt5$power,
                            i, pwrt6$power
                            ))
}

ptab <- cbind(seq_len(nrow(ptab)), ptab)

colnames(ptab) <- c("id","100%.effect size","100%.power",
                    "50%.effect size","50%.power",
                    "60%.effect size","60%.power",
                    "70%.effect size","70%.power",
                    "80%.effect size","80%.power",
                    "90%.effect size","90%.power"
                    )

# get data into right format for ggplot2
temp <- ptab %>%
  as.data.frame() %>% 
  gather(key = name, value = val, 2:13) %>% 
  separate(col = name, into = c("reach", "var"), sep = "\\." ) %>%
  spread(key = var, value = val)

# factor group
temp$group <- factor(temp$group, 
                     levels = c("100%", 
                                "50%", 
                                "60%", 
                                "70%",
                                "80%", 
                                "90%"
                                ))


# plot
p <- ggplot(temp, aes(x = `effect size`, y = power, color = reach)) +
geom_line(size=2) + 
  theme_bw() + 
  theme(axis.text=element_text(size=14), 
        axis.title=element_text(size=14), 
        legend.text=element_text(size=14)) +
  ggtitle("Power Curves for different ITT reach %'s") +
  #geom_vline(xintercept = .54, linetype = 2) +
  geom_hline(yintercept = 0.80, linetype = 2)

p

#grid.arrange(p, p, nrow = 1)
