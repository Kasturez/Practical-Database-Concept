USE s3805632;
DROP TABLE IF EXISTS `case`;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS treatment;
DROP TABLE IF EXISTS disease;
DROP TABLE IF EXISTS inventory;

CREATE TABLE doctor
(
    ID                      VARCHAR(3),
    name                    VARCHAR(50),
    gender                  ENUM ('male', 'female'),
    `startDate(yyyy-mm-dd)` DATE,
    CONSTRAINT pk_doctor PRIMARY KEY (ID)
);

CREATE TABLE disease
(
    ID   VARCHAR(3),
    name VARCHAR(50),
    CONSTRAINT pk_disease PRIMARY KEY (ID)
);

CREATE TABLE treatment
(
    ID   VARCHAR(4),
    name VARCHAR(50),

    CONSTRAINT pk_treatment PRIMARY KEY (ID)
);

CREATE TABLE patient
(
    ID              INT UNSIGNED,
    name            VARCHAR(50),
    `check-in Date` DATE,
    diagnosed       VARCHAR(50),
    CONSTRAINT pk_patient PRIMARY KEY (ID)
);

CREATE TABLE room
(
    number  VARCHAR(3),
    type enum('ICU', 'recovery'),
    CONSTRAINT pk_room PRIMARY KEY (number)
);

CREATE TABLE inventory
(
    ID    VARCHAR(3),
    name  VARCHAR(50),
    stock INT UNSIGNED,

    CONSTRAINT pk_inventory PRIMARY KEY (ID)
);

CREATE TABLE `case`
(
    case_id        INT UNSIGNED,
    doctor_id      VARCHAR(3),
    patient_id     INT UNSIGNED,
    room_number    VARCHAR(3),
    emergency_case BOOLEAN,
    operation_date DATE,
    operation_time TIME,
    disease_id     VARCHAR(3),
    treatment_id   VARCHAR(3),
    resource_id    VARCHAR(3),

    CONSTRAINT fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES doctor (ID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_patient_id FOREIGN KEY (patient_id) REFERENCES patient (ID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_room_number FOREIGN KEY (room_number) REFERENCES room (number) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_disease_id FOREIGN KEY (disease_id) REFERENCES disease (ID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_treatment_id FOREIGN KEY (treatment_id) REFERENCES treatment (ID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_resource_id FOREIGN KEY (resource_id) REFERENCES inventory (ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- insert value into doctor table
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('000', 'Amelia', 'female', '1950-2-5');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('001', 'Isabella', 'female', '1933-110');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('002', 'Mason', 'male', '1940-1-17');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('003', 'Oliver', 'male', '1930-1-7');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('004', 'Emma', 'female', '1949-1-26');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('005', 'Charlotte', 'female', '1935-1-12');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('006', 'Isabella', 'female', '1950-2-1');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('007', 'Oliver', 'male', '1950-3-18');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('008', 'Evelyn', 'female', '1950-3-11');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('009', 'Oliver', 'male', '1950-3-18');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('010', 'Oliver', 'male', '1930-1-7');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('011', 'Liam', 'male', '1950-3-14');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('012', 'Olivia', 'female', '1927-1-4');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('013', 'Isabella', 'female', '1933-1-10');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('014', 'Elijah', 'male', '1932-1-9');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('015', 'Benjamin', 'male', '1950-2-4');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('016', 'Mia', 'female', '1950-2-7');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('017', 'Elijah', 'male', '1950-3-20');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('018', 'Noah', 'male', '1950-3-16');
INSERT INTO doctor(id, name, gender, `startdate(yyyy-mm-dd)`)
VALUES ('019', 'Harper', 'female', '1941-1-18');

-- insert value into disease table
INSERT INTO disease(id, name)
VALUES ('000', 'Allergies');
INSERT INTO disease(id, name)
VALUES ('001', 'Colds');
INSERT INTO disease(id, name)
VALUES ('002', 'Conjunctivitis (pink eye)');
INSERT INTO disease(id, name)
VALUES ('003', 'Diarrhea');
INSERT INTO disease(id, name)
VALUES ('004', 'Heart disease');
INSERT INTO disease(id, name)
VALUES ('005', 'Mononucleosis');
INSERT INTO disease(id, name)
VALUES ('006', 'Cancer');
INSERT INTO disease(id, name)
VALUES ('007', 'Stroke');
INSERT INTO disease(id, name)
VALUES ('008', 'Diabetes');
INSERT INTO disease(id, name)
VALUES ('009', 'Alzheimer\'s disease');

-- insert value into inventory table:
INSERT INTO inventory(id, name, stock)
VALUES ('000', 'Needles', '01');
INSERT INTO inventory(id, name, stock)
VALUES ('001', 'Syringes', '07');
INSERT INTO inventory(id, name, stock)
VALUES ('002', 'Needle-holders', '00');
INSERT INTO inventory(id, name, stock)
VALUES ('003', 'Medicine cups', '01');
INSERT INTO inventory(id, name, stock)
VALUES ('004', 'Towels', '06');
INSERT INTO inventory(id, name, stock)
VALUES ('005', 'Gauze', '12');
INSERT INTO inventory(id, name, stock)
VALUES ('006', 'Compartment trays', '07');
INSERT INTO inventory(id, name, stock)
VALUES ('007', 'Scissors', '14');
INSERT INTO inventory(id, name, stock)
VALUES ('008', 'Vicodin(hydrocodone / acetaminophen)', '16');
INSERT INTO inventory(id, name, stock)
VALUES ('009', 'Simvastatin', '12');
INSERT INTO inventory(id, name, stock)
VALUES ('010', 'Lisinopril', '07');
INSERT INTO inventory(id, name, stock)
VALUES ('011', 'Levothyroxine', '13');
INSERT INTO inventory(id, name, stock)
VALUES ('012', 'Azithromycin', '06');
INSERT INTO inventory(id, name, stock)
VALUES ('013', ' Metformin', '13');
INSERT INTO inventory(id, name, stock)
VALUES ('014', 'Lipitor(atorvastatin)', '01');
INSERT INTO inventory(id, name, stock)
VALUES ('015', 'Amlodipine', '15');

-- insert value into patient table
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('000', 'Elijah', '2001-12-15', 'Mononucleosis');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('001', 'Benjamin', '2008-9-4', 'Heart disease');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('002', 'Amelia', '2003-2-3', 'Stroke');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('003', 'Olivia', '2002-6-16', 'Allergies');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('004', 'Ethan', '2004-2-16', 'Diarrhea');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('005', 'Ethan', '2010-2-11', 'Stroke');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('006', 'Mia', '2001-4-12', 'Stroke');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('007', 'Olivia', '2004-2-1', 'Conjunctivitis (pink eye)');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('008', 'Elijah', '2009-2-9', 'Mononucleosis');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('009', 'Oliver', '2002-12-2', 'Diarrhea');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('010', 'Evelyn', '2007-5-3', 'Cancer');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('011', 'Evelyn', '2009-11-3', 'Allergies');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('012', 'Benjamin', '2007-2-16', 'Stroke');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('013', 'Harper', '2003-8-5', 'Allergies');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('014', 'Ava', '2004-1-21', 'Conjunctivitis (pink eye)');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('015', 'Elijah', '2007-2-25', 'Allergies');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('016', 'James', '2004-12-27', 'Conjunctivitis (pink eye)');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('017', 'Amelia', '2009-10-16', 'Conjunctivitis (pink eye)');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('018', 'Lucas', '2001-1-11', 'Colds');
INSERT INTO patient(id, name, `check-in date`, diagnosed)
VALUES('019', 'Mason', '2005-4-3', 'Heart disease');

-- insert value into room table
INSERT INTO room(number, type)
VALUES ('000', 'ICU')

