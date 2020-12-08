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
    ID        VARCHAR(3) ,
    name      VARCHAR(50),
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
    number    VARCHAR(3),
    slot      INTEGER,
    disease   VARCHAR(3),
    CONSTRAINT pk_room PRIMARY KEY (number)
);

CREATE TABLE inventory
(
    ID VARCHAR(3),
    name VARCHAR(50),
    stock INT UNSIGNED,

    CONSTRAINT pk_inventory PRIMARY KEY (ID)
);

CREATE TABLE `case`
(
    case_id        INT UNSIGNED,
    doctor_id      VARCHAR(3)   ,
    patient_id     INT UNSIGNED,
    room_number    VARCHAR(3),
    emergency_case BOOLEAN,
    operation_date DATE,
    operation_time TIME,
    disease_id     VARCHAR(3),
    treatment_id   VARCHAR(3),
    resource_id VARCHAR(3),

    CONSTRAINT fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES doctor (ID) ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT fk_patient_id FOREIGN KEY (patient_id) REFERENCES patient (ID) ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT fk_room_number FOREIGN KEY (room_number) REFERENCES room (number) ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT fk_disease_id FOREIGN KEY (disease_id) REFERENCES disease (ID) ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT fk_treatment_id FOREIGN KEY (treatment_id) REFERENCES treatment (ID) ON UPDATE CASCADE ON DELETE CASCADE ,
    CONSTRAINT fk_resource_id FOREIGN KEY (resource_id) REFERENCES inventory (ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO doctor(id, name, `startdate(yyyy-mm-dd)`)
VALUES ('001', 'John', '2020-12-21')


