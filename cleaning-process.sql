CREATE DATABASE finance_db;

USE finance_db;

CREATE TABLE finance (
	customer_id VARCHAR(20),
    loan_id VARCHAR(20),
    loan_type VARCHAR(20),
    loan_amount INT(15),
    interest_rate DEC(12),
    loan_term INT(5),
    employment_type VARCHAR(20),
    income_level VARCHAR(20),
    credit_score INT(5),
    gender VARCHAR(20),
    marital_status VARCHAR(20),
    education_level VARCHAR(30),
    application_date VARCHAR(30),
    approval_date VARCHAR(30),
	disbursement_date VARCHAR(30),
    due_date VARCHAR(30),
    default_status VARCHAR(10)
);

SELECT * FROM finance;
					
CREATE TABLE finance_copy AS SELECT * FROM finance;

SELECT * FROM finance_copy;

ALTER TABLE finance_copy ADD COLUMN clean_application_date DATE;
ALTER TABLE finance_copy ADD COLUMN clean_approval_date DATE;
ALTER TABLE finance_copy ADD COLUMN clean_disbursement_date DATE;
ALTER TABLE finance_copy ADD COLUMN clean_due_date DATE;

UPDATE finance_copy
SET clean_application_date = CASE
    WHEN application_date LIKE '__-__-____' THEN STR_TO_DATE(application_date, '%d-%m-%Y')
    WHEN application_date LIKE '____-__-__' THEN STR_TO_DATE(application_date, '%Y-%m-%d')
    ELSE NULL
END;

UPDATE finance_copy
SET clean_approval_date = CASE
    WHEN approval_date LIKE '__-__-____' THEN STR_TO_DATE(approval_date, '%d-%m-%Y')
    WHEN approval_date LIKE '____-__-__' THEN STR_TO_DATE(approval_date, '%Y-%m-%d')
    ELSE NULL
END;

UPDATE finance_copy
SET clean_disbursement_date = CASE
    WHEN disbursement_date LIKE '__-__-____' THEN STR_TO_DATE(disbursement_date, '%d-%m-%Y')
    WHEN disbursement_date LIKE '____-__-__' THEN STR_TO_DATE(disbursement_date, '%Y-%m-%d')
    ELSE NULL
END;

UPDATE finance_copy
SET clean_due_date = CASE
    WHEN due_date LIKE '__-__-____' THEN STR_TO_DATE(due_date, '%d-%m-%Y')
    WHEN due_date LIKE '____-__-__' THEN STR_TO_DATE(due_date, '%Y-%m-%d')
    ELSE NULL
END;

SELECT * FROM finance_copy;

ALTER TABLE finance_copy DROP COLUMN application_date;
ALTER TABLE finance_copy DROP COLUMN approval_date;
ALTER TABLE finance_copy DROP COLUMN disbursement_date;
ALTER TABLE finance_copy DROP COLUMN due_date;

ALTER TABLE finance_copy CHANGE clean_application_date application_date DATE;
ALTER TABLE finance_copy CHANGE clean_approval_date approval_date DATE;
ALTER TABLE finance_copy CHANGE clean_disbursement_date disbursement_date DATE;
ALTER TABLE finance_copy CHANGE clean_due_date due_date DATE;

SELECT * FROM finance_copy;