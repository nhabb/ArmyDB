from faker import Faker
from random import randint, choice

fake = Faker()

with open('personnel_insert.sql', 'w') as file:
    for i in range(101, 1101):
        fname = fake.first_name()
        lname = fake.last_name()
        dob = fake.date_of_birth(minimum_age=20, maximum_age=45).strftime('%Y-%m-%d')
        enlist = fake.date_between(start_date='-15y', end_date='today').strftime('%Y-%m-%d')
        status = choice(['Active', 'Retired', 'Reserve'])
        rankID = randint(1, 10)
        unitID = randint(201, 220)

        file.write(
            f"INSERT INTO personnel (personnelID, firstName, lastName, dateOfBirth, enlistmentDate, status, rankID, unitID) "
            f"VALUES ({i}, '{fname}', '{lname}', TO_DATE('{dob}', 'YYYY-MM-DD'), TO_DATE('{enlist}', 'YYYY-MM-DD'), "
            f"'{status}', {rankID}, {unitID});\n"
        )
