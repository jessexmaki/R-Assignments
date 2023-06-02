# 1st Part of 19.1
# h0: All means are equal // Ha: One mean is not equal
# Create a data frame with the depth and site columns
info <- data.frame(
  "depth" = c(
    93, 120, 65, 105, 115, 82, 99, 87, 100, 90, 78, 95, 93, 88, 110, 85,
    45, 80, 28, 75, 70, 65, 55, 50, 40, 100, 75, 65, 40, 73, 65, 50, 30,
    45, 50, 45, 55, 96, 58, 95, 90, 65, 80, 85, 95, 82
),
"site" = c(
    rep("Site i", 15),
    rep("Site ii", 10),
    rep("Site iii", 12),
    rep("Site iv", 9)
) )
# Convert site to a factor
info$site <- factor(info$site)
# Calculate the mean depth for each site
infomean <- tapply(info$depth, info$site, mean)
# Create a boxplot and add mean values as points
boxplot(info$depth ~ info$site,
        xlab = "Site",
        ylab = "Depth (cm)",
        main = "Boxplot of Depth by cm by Site")
points(1:4, infomean, pch = 4)

# Center the depth values by subtracting the mean depth for each site
infomeancen <- info$depth - infomean[info$site]
# Check the normality assumption by creating a normal QQ plot
qqnorm(infomeancen)
qqline(infomeancen)

# Check the equality of variances using the ratio of the maximum to minimum standard devia
info.sds <- tapply(info$depth, info$site, sd)
max(info.sds)/min(info.sds)

# Run an ANOVA test and print the summary
infoaov <- aov(depth ~ site, info)
summary(infoaov)

# Close the plot device
dev.off()

# 2nd Part of 19.1
# Diagnosis checking what suits an ANOVA analysis
# Sepal.Length ----
# Load the iris dataset
mydata <- iris
# Print the dataset
mydata

# Check normality using Shapiro-Wilk test for each variable
shapiro.test(mydata$Sepal.Length)
shapiro.test(mydata$Sepal.Width)
shapiro.test(mydata$Petal.Length)
shapiro.test(mydata$Petal.Width)

# Set plot margins
par(mar=c(5, 4, 4, 2) + 0.1)
# Save boxplots for each variable grouped by species as a PDF file
pdf("myplot.pdf", width = 8, height = 4)

boxplot(mydata$Sepal.Length~mydata$Species)

boxplot(mydata$Sepal.Width~mydata$Species)

{boxplot(mydata$Petal.Length~mydata$Species)}

# Run an ANOVA test on Sepal.Width grouped by species and print the summary
anova=aov(mydata$Sepal.Width~mydata$Species)
summary(anova)




