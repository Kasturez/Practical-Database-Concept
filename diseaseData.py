import random

disease = ["Allergies", "Colds", "Conjunctivitis (pink eye)", "Diarrhea",
           "Heart disease", "Mononucleosis", "Cancer",
           "Stroke", "Diabetes", "Alzheimer's disease"
           ]
for i in range(len(disease)):
    print("`INSERT INTO disease(id, name)".strip("`"))
    result = "`VALUES('" + str(i).rjust(3, "0") + "', '" + disease[i] + "');"
    print(result.strip("`"))
