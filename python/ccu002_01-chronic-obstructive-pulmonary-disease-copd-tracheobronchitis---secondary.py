# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"J42","system":"icd10"},{"code":"J41","system":"icd10"},{"code":"J40","system":"icd10"},{"code":"866901000000103","system":"icd10"},{"code":"89549007","system":"icd10"},{"code":"185086009","system":"icd10"},{"code":"49691004","system":"icd10"},{"code":"84409004","system":"icd10"},{"code":"52571006","system":"icd10"},{"code":"74417001","system":"icd10"},{"code":"63480004","system":"icd10"},{"code":"61937009","system":"icd10"},{"code":"H5832","system":"icd10"},{"code":"H312z","system":"icd10"},{"code":"H3121","system":"icd10"},{"code":"H312.","system":"icd10"},{"code":"H31y1","system":"icd10"},{"code":"H31..","system":"icd10"},{"code":"H3110","system":"icd10"},{"code":"H3100","system":"icd10"},{"code":"H31y.","system":"icd10"},{"code":"H31yz","system":"icd10"},{"code":"H311z","system":"icd10"},{"code":"H3111","system":"icd10"},{"code":"H310z","system":"icd10"},{"code":"H310.","system":"icd10"},{"code":"H31z.","system":"icd10"},{"code":"H311.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-chronic-obstructive-pulmonary-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-chronic-obstructive-pulmonary-disease-copd-tracheobronchitis---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-chronic-obstructive-pulmonary-disease-copd-tracheobronchitis---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-chronic-obstructive-pulmonary-disease-copd-tracheobronchitis---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
