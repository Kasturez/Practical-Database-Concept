import random

items = ["Needles", "Syringes", "Needle-holders",
         "Medicine cups", "Towels",
         "Gauze", "Compartment trays",
         "Scissors", "Vicodin(hydrocodone / acetaminophen)",
         "Simvastatin", "Lisinopril",
         "Levothyroxine", "Azithromycin",
         " Metformin", "Lipitor(atorvastatin)", "Amlodipine"
         ]
for i in range(len(items)):
    print("`INSERT INTO inventory(id, name, stock)".strip("`"))
    result = "VALUES ('" + str(i).rjust(3, "0") + "', '" + items[i] + "', '" + str(random.randint(0, 20)).rjust(2, "0") +"');"
    print(result)