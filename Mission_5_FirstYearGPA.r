# Mission #5 - Simple Linear Regression

plot(x = FirstYearGPA$HSGPA,
     y = FirstYearGPA$GPA, col='grey',
     cex=1.2, xlab = "HS GPA",
     ylab = "First Year College GPA",
     main = "HS GPA and 1st-Year University GPA"
)
abline(lm(FirstYearGPA$GPA ~ FirstYearGPA$HSGPA), col='blue')
summary(lm(FirstYearGPA$GPA ~ FirstYearGPA$HSGPA))

cor(FirstYearGPA$HSGPA, FirstYearGPA$GPA)

# Y-intercept is 2.068
# m: 0.0016986 =
# The line of best fit would be:
# First-year college GPA^ = 2.0684 + 0.0016986 SAT_Verbal

# The y-intercept value 2.0684 could be interpreted as follows.
# For a student who scores a 0 on an SAT Verbal we expect their
# first-year college GPA to be around 2.0684, on average.

# The slope value of 0.0016986 could be interpreted as follows.
# For every increase in SAT Verbal score by 1 point, on average,
# we expect the first-year college GPA to increase by 0.0016986 points.

cor(x = FirstYearGPA$SATV,
     y = FirstYearGPA$GPA)
# The correlation (r) between SAT Verbal and first-year college GPA is 0.3043114.
# The coefficient of determination (r^2) is 0.3043114^2 = 0.09260542817.
# Approximately 9.26% of the variability in first-year college GPA is explained
# by a student's SAT Verbal score.

# The residual standard error value is 0.4444.
# This suggests that if we have a student's SAT Verbal score, and try to predict
# such a student's first-year college GPA on average, the error would be around not a full
# letter grade but part of a letter grade. 

my_model <- lm(FirstYearGPA$GPA ~ FirstYearGPA$SATV)
summary(my_model) # Model summary for beta-0 and beta-1 coefficients
plot(my_model) # The residuals are centered around 0.
hist(my_model$residuals, main = "Residual Histogram") # The residuals are centered around 0.
boxplot(my_model$residuals, main="Residual Box Plot")

# Intercept: 2.0684133
# Slope: 0.0016986 # Every 1 point increase in a student's SAT Verbal score is associated with a 0.0016986 increase in first-year college GPA, on average.
2.0684133 + 0.0016986 * (800) # Students with an SAT verbal Score of 800 would be expected to have a first-year college GPA of 3.427293, on average.
