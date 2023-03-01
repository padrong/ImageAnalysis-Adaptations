# ImageAnalysis-Adaptations
Image analysis MATLAB scripts developed to work off of data processed from OUFTI. Publicly available code correlates to MATLAB scripts used in Padron et. al (2023). 

#Introduction

This script takes the fluoresence intensity data from Oufti(1) which is present as an 1x1 matrix of values that range across the cell body and produces an average flouresence intensity for a single cell. From there, it then averages that value for the entire cell population and yields a rough metric of the "average per-frame fluoresence intensity". This particular script as commented can only be used on triplicate technical replicates and must be modified if considering an average of technical replicates that is not divisible by 3.  

#Caveats

The script is only functional after data has been processed in Oufti, which yields a .mat file with the respective variables that are used in this script. As stated above and as written, code is only functional for technical replicates of 3. 

For best results experiments analysed in Oufti should be exported as .TIFF files and then cells should be meshed following standard Oufti protocol. Background subtraction should also be done. Once the images are processed fully they can be run through the script and downstream analysis can be done with the raw data. The final raw intensity values are located in the "SignalX" matrix and can be copied over to Excel or your downstream statistical analysis pipeline of choice. 

1. Paintdakhi A, Parry B, Campos M, et al. Oufti: an integrated software package for high-accuracy, high-throughput quantitative microscopy analysis. Mol Microbiol. 2016;99(4):767-777. doi:10.1111/mmi.13264
