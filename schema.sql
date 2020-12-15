CREATE TABLE patient (
    id NUMBER(8) NOT NULL PRIMARY KEY,
    Pname VARCHAR(25) NOT NULL,
    sex CHAR(1),
    age DATE,
    room NUMBER(3)
);

CREATE TABLE Medical_staff (
    id VARCHAR(2) PRIMARY KEY,
    doctor VARCHAR(25),
    nurse VARCHAR(25),
    caregiver VARCHAR(25)
);

CREATE TABLE care (
    p_id NUMBER(8),
    m_id VARCHAR(2),
    dates DATE,
    breakfast CHAR(1),
    lunch CHAR(1),
    dinner CHAR(1),
    medicine TIME,
    blood_sugar VARCHAR(5),
    blood_pressure VARCHAR(5),
    bath char(1),
    overnight VARCHAR(12),
    FOREIGN KEY(p_id) REFERENCES patient(id),
    FOREIGN KEY(m_id) REFERENCES Medical_staff(id)
);


CREATE TABLE Major_disease (
    p_id NUMBER(8) NOT NULL,
    disease VARCHAR(200) NOT NULL,
    PRIMARY KEY(p_id,disease),
    FOREIGN KEY(p_id) REFERENCES patient(id)
);


CREATE TABLE family (
    fnumber VARCHAR(15) NOT NULL PRIMARY KEY,
    relation VARCHAR(5),
    fname VARCHAR(15)
);


CREATE TABLE enrollment (
    p_id NUMBER(8) NOT NULL,
    f_number VARCHAR(15) NOT NULL,
    PRIMARY KEY(p_id,f_number),
    FOREIGN KEY(p_id) REFERENCES patient(id),
    FOREIGN KEY(f_number) REFERENCES family(fnumber)
);