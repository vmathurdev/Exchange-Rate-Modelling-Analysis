The data collected is a monthly time series data collected from April 1996 to March 2014. The data has been collected from the website of the central bank of India and USA for inflation, foreign exchange reserves etc. and partly from the website of the World Bank. The source of each dataset is provided in the appendix. Since the data taken is a time-series data problem of multi-collinearity is common. To remove multi-collinearity lags of respective variables were introduced into the model. Also to make the respective series stationary absolute values of variables (exchange rate, forex reserves, IIP) was not used,rather their percentage change (growth) from the previous month was used in the model.The model thus formed with the data is a multiple linear regression model with GEXR (Percentage Change in exchange rate from that of the previous month) as the explained variable and GFXR (percentage change in foreign exchange reserves from that of the   previous month), INFD (difference between inflation in India and inflation in USA), GIIP (percentage change in production of total industry in India from that of the previous month), STYD (short term (90 days) yield differential between India and us government bonds), LTYD (long term (10 years) yield differential between India and us government bonds), GM3 (percentage change in broad money for India from that of the previous month) as the explanatory variables. First graphical analysis of each variable is done with the GEXR(growth of
exchange rate MoM). Then Assumptions of OLS are statistically checked. Durbin-Watson Test was used to check for no auto-correlation among
residuals. A Q-Q plot was also plotted to check for the same. 


Then explanatory variables were checked for no perfect correlation between them. Then a normality graph for residuals was plotted. Finally parameters were estimated using OLS regression. 

Limitations:
1) Ordinary Least Square Regression is not ideally suited for Time-series
data; therefore the results might be biased.
2) The variables used may not be sufficient to explain the model. More
variables and non-linear techniques can be used in future studies.
