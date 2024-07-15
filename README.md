# Molecular Dynamics of Barium Oxide with LAAMPS 

The following repository is part of my undergraduate research project in molecular dynamics. 
`Pot_BaO` contain a table of vashista potential values of potential energy of BaO.
`in.BaO_Vash` is the input script used in LAAMPS (Large-scale Atomic/Molecular Massively Parallel Simulator.). 

We performed simulations on canonical and isothermal-isobaric ensemble which are respectively related to `ensemble NVE` and `ensemble NPT` folders.
Inside each folder we have `text_files` which are the default output of LAAMPS simulations. The file `Extract_data.bat` uses regular expression to
filter the important physical properties in the '.txt' files, such as temperature, volume, pressure, etc and write csv files of the folder `csv_files`.  

The data analysis is done in the jupyter notebook format that essentially uses matplotlib, pandas, numpy and scipy librarys.
