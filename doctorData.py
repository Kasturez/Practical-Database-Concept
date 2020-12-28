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
for i in range(20):
    print("`INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`) ".strip("`"))
    namesInt = random.randint(0, 17)
    result = "`VALUES('" + str(i).rjust(3, "0") + "', '" + names[
        namesInt] + "', '" + ("male" if namesInt % 2 == 0 else "female") + "', '" + "20" + str(
        random.randint(0, 10)).rjust(2, "0") + "-" + str(random.randint(1, 12)) + "-" + str(
        random.randint(1, 29)) + "');"
    print(result)
