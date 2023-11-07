#############################################################
###WAY 1: Read in your OPUS files from folder in windows explorer###
### This way requires the OPUS macro to output spc files
#############################################################
### ALL SPECTRA
#############################################################
# set path for .spc data for spectral data
library(readxl)
library(writexl)
install.packages("openxlsx") 
library(openxlsx)
library(hyperSpec)
library(tidyverse)
library(dplyr)
setwd("/Users/jamieclark/Desktop/WG NIRS R Project")
files.t<-list.files(path=("SPECTRA/ALL_SPECTRA.spc")
) #set the file path to the folder with your files.

files.t
# read in all the chosen directory files (ALWAYS)
library(here)
spectrumlist.t <-lapply(paste0(here("SPECTRA","ALL_SPECTRA.spc"),"/",files.t),read.spc) #this contains the OPUS file information stored as data blocks.
#these data blocks will need to be indexed (see below code) for analysis.
