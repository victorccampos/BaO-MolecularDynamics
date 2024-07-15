@echo off & py -x "%~f0" %*

import re
import csv

with open('ET_3500.txt', 'r') as f:

    pattern = 'Step.*?\n(.*?)Loop'
    string = f.read()

    extracted_data = []
    for total_data in re.findall(pattern, string, flags=re.DOTALL): 
        for line in total_data.splitlines():
            extracted_data.append(line.split())

with open('ET_3500.csv', 'w', newline='') as f:
    write = csv.writer(f)
    write.writerows(extracted_data)