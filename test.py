import csv
from faker import Faker
from random import randint, choice
from datetime import datetime

fake = Faker()

with open('personnel.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['personnelID', 'firstName', 'lastName', 'dateOfBirth', 'enlistmentDate', 'status', 'rankID', 'unitID'])

    for i in range(101, 1101):
        fname = fake.first_name()
        lname = fake.last_name()
        dob = fake.date_of_birth(minimum_age=20, maximum_age=45).strftime('%Y-%m-%d')
        enlist = fake.date_between(start_date='-15y', end_date='today').strftime('%Y-%m-%d')
        status = choice(['Active', 'Retired', 'Reserve'])
        rankID = randint(1, 10)
        unitID = randint(201, 220)
        writer.writerow([i, fname, lname, dob, enlist, status, rankID, unitID])