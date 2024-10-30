# DDL ( 1.CREATE, 2.ALTER, 3.DROP, 4.TRUNCATE TABLE);
# DML( 1.SELECT, 2.INSERT, 3.UPDATE, 4.DELETE);


#DDL
# 1. CREATE USER_TABLE
CREATE TABLE USER_TABLE
(
ID INT PRIMARY KEY,
RESISTRATION_DATE TIMESTAMP,
USER_NAME VARCHAR(50) NOT NULL,
PHONE_NUMBER CHAR(11) UNIQUE NOT NULL,
OPERATING_SYSTEM VARCHAR(10),
OTP_VARIFIED BOOLEAN,
CITY VARCHAR(20)
);

# 2. ALTER TABLE TO ADD OR DROP A COLUMN OR RENAME THE TABLE

# 2.1 RENAME
ALTER TABLE USER_TABLE RENAME TO USER_TAB;

#2.2 ADD COLUMN
ALTER TABLE USER_TAB ADD COLUMN GENDER VARCHAR(6);

#2.3 DROP COLUMN
ALTER TABLE USER_TAB DROP COLUMN GENDER;

# 3. DROP TABLE
DROP TABLE USER_TAB;

# 4. TRUNCATE TABLE
TRUNCATE TABLE USER_TAB; #(table values remove)



#DML
# 1. SELECT
SELECT * FROM USER_TABLE;
SELECT USER_NAME, PHONE_NUMBER FROM USER_TABLE;

# 2. INSERT DATA IN OUR TABLE
INSERT INTO USER_TABLE
VALUES
	(1, '2023-07-27', 'Asif Antaj Robin', '01312531960', 'Linus', 1, 'Noakhali'),
    (2, NOW(), 'Afrin Jahan Rupa', '01300465821', 'Android', 0, 'Noakhali'),
    (3, CURRENT_TIMESTAMP(), 'MD. Arif Uddin', '01724562621', 'Windows', 1, 'Noakhali'),
    (4, NOW(), 'AMENA Khatun Rubia', '01862894333', 'Android', 0, 'Noakhali'),
    (5, CURRENT_TIMESTAMP(), 'Khadija Begum', '01318502711', 'Android', 0, 'Chittagong'),
    (6, NOW(), 'Afifa jahan Rafa', 01867449275, NOT NULL, 0, 'Noakhali'),
    (7, CURRENT_TIMESTAMP(), 'Atif Antaj Rayhan', 01605186990, NOT NULL, 1, 'Noakhali');
    
# 3. UPDATE
SET SQL_SAFE_UPDATES = 0;
UPDATE USER_TABLE SET USER_NAME = 'Amena Khatun Rubia' WHERE USER_NAME = 'AMENA Khatun Rubia';
UPDATE USER_TABLE SET OTP_VARIFIED = TRUE;


-- INSERT INTO USER_TABLE VALUES
-- 	(8, NOW(), 'Sumaiya', '01614198269', 'IOS', 0, 'Dhaka');
#
# 4. DELETE DATA INSERT THE TABLE
DELETE FROM USER_TABLE WHERE OPERATING_SYSTEM = 'IOS';
DELETE  FROM USER_TABLE;
COMMIT;