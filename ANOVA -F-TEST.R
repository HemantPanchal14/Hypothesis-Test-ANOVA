#ANOVA = Analysis of variance
#It is a statistical technique that is used to check if the "MEANS' of two or more groups are significantly different from each other.
#In anova will compare more than TWO groups
#Anova is similar to t-test ,tha difference is that if you want to compare more than two groups will go with anova.

#Case Study: A drug company tested three formulations of a pain relief medicine for migration headache sufferers.
#for the experiment 27 volunteers were selected and 9 were randomly assigned to one of three drug formulations.
#The subject were instructed to take the drug during their next migraine headache episode and to report their pain on a scale of 1 to 10 (10 being most pain).

#Data given:
#DRUG A = 4 5 4 3 2 4 3 4 4
#DRUG B = 6 8 4 5 4 6 5 8 6
#DRUG C = 6 7 6 6 7 5 6 5 5

# Here, we have to compare whether all three medicine giving same effect of not
#If'MEAN' is same i.e. means all three medicine are effective
#If'MEAN' is different i.e. means out of three only one or two medicine is effective.

# Define Ho and Ha
#Null Ho = MEAN of all group is same
#Alter Ha= MEAN of all group is NOT same

#TO CHECK WHETHER THESE TJHREE GROUPS ARE DIFFERENT FOR THAT WILL USE 'ANOVA'ANALYSIS
#will assign to variables

pain<-c (4,5,4,3,2,4,3,4,4,6,8,4,5,4,6,5,8,6,6,7,6,6,7,5,6,5,5)
drugs<-c (rep("A",9), rep("B",9), rep("c",9))
drugs
pain

# will make table and use data.frame function
data.frame(pain,drugs)

# Assign Name to table
Medicine_anv<-data.frame(pain,drugs)
Medicine_anv

# now will use ANOVA
aov(pain~drugs,data = Medicine_anv)

#assign name it
ANS<-aov(pain~drugs,data = Medicine_anv)
ANS   

#Terms:
 # drugs Residuals
#Sum of Squares  28.22222  28.44444
#Deg. of Freedom        2        24

#Residual standard error: 1.088662
#Estimated effects may be unbalanced



#will see details under summary function

summary(ANS)

#             Df  Sum Sq  Mean Sq  F value     Pr(>F)    
#drugs        2   28.22   14.111   11.91       0.000256 ***
# Residuals   24  28.44   1.185                     


#Considering Pr i.e. p-value will decide hypothesis
# Here p<0.05 i.e. 0.000256< 0.05 hence, will accept Ha =all groups are not same
