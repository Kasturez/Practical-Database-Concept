import random

names = ["Liam", "Olivia",
         "Noah", "Emma",
         "Oliver", "Ava",
         "Elijah", "Isabella",
         "James", "Charlotte",
         "Benjamin", "Amelia",
         "Lucas", "Mia",
         "Mason", "Harper",
         "Ethan", "Evelyn"]
disease = ["Allergies", "Colds", "Conjunctivitis (pink eye)", "Diarrhea",
           "Heart disease", "Mononucleosis", "Cancer",
           "Stroke", "Diabetes", "Alzheimer's disease"
           ]

for i in range(20):
    print("`INSERT INTO patient(id, name, `check-in date`, diagnosed)".strip("`"))
    result = "VALUES(\'" + str(i).rjust(3, "0") + "', '" + str(names[random.randint(0, 17)]) + "', '" + "20" + str(
        random.randint(0, 10)).rjust(2, "0") + "-" + str(random.randint(1, 12)) + "-" + str(
        random.randint(1, 28)) + "', '" + disease[random.randint(0, 9)] + "');"
    print(result)
