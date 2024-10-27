USE pet_database;

-- 1. Insert Fluffy's vet event.
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- 2. Insert Hammy's details and event.
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Hammy', 'Diane', 'M', 'hamster', '2010-10-30');

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- 3. Insert Fluffy's kittens.
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES 
    ('Kitten1', 'Fluffy', 'M', 'cat', '2020-08-01'),
    ('Kitten2', 'Fluffy', 'M', 'cat', '2020-08-01'),
    ('Kitten3', 'Fluffy', 'F', 'cat', '2020-08-01'),
    ('Kitten4', 'Fluffy', 'F', 'cat', '2020-08-01'),
    ('Kitten5', 'Fluffy', 'F', 'cat', '2020-08-01');

-- 4. Insert Claws' injury event.
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broke the rib');

-- 5. Update Puffball's death date.
UPDATE petPet  SET death = '2020-09-01'  WHERE petname = 'Puffball';

-- 6. Remove Harold's dog from the database.
DELETE FROM petPet  WHERE owner = 'Harold' AND species = 'dog';