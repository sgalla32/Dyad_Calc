#Stephanie Galla
#4April2019
#How to produce identity coefficients. 

setwd("~/Dyad Simulations/Dyads_OFK_Kaki_Reseq")

#Load package 'identity'
library("identity", lib.loc="C:/Program Files/R/R-3.5.2/library")

#A txt file with the individuals used in the pedigree analyses should be used here.
#Note that the pedigree cannot have some parents that are founders, and others that are known. 
#To get around this, create another individual with founding parents (see example for details).
indiv<- scan("Kaki_Resequencing_SampleList_Column_Vector.txt") 
head(indiv)

#A tab delimited file should be used here with the first column being the individual, the second being its mother, and the third being its father. No headings needed. 
ped<- read.table("Pedigree_Kaki_Resequencing_Samples_Only_4Apri2019.txt") 

coeffs<-identity.coefs (indiv, ped)

write.table(coeffs, "kaki_coeffs_output.txt", row.names = FALSE, col.names = FALSE)

remove(list = ls())

indiv<- scan("OFK_Resequencing_SamplesList_Column_Vector.txt") 
head(indiv)

ped<- read.table("Pedigree_OFK_Resequencing_Samples_Only_4Apri2019.txt") 

coeffs<-identity.coefs (indiv, ped)

write.table(coeffs, "OFK_coeffs_output.txt", row.names = FALSE, col.names = FALSE)
