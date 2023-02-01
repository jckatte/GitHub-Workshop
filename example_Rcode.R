#
# Git Workshop 1: Example code -------------------------------------------------
#



#
# load data --------------------------------------------------------------------
#

load("data.Rdata")                                                              # please set your working directory 


#
# Check data -------------------------------------------------------------------
#

str(data)
head(data)
View(data)
summary(data)


#
# Linear regression ------------------------------------------------------------
#


fullmodel <- lm(Y ~ X1 + X2 + X3 + X4, data = data)
summary(fullmodel)


#
# Model selection --------------------------------------------------------------
# 



model_selection <- step(fullmodel)
final_model     <- lm(Y ~ X1 + X2 + X3, data = data)


#
# Assess residuals/ assumptions of final model ---------------------------------
#


par(mfrow = c(2, 2))
plot(final_model)








