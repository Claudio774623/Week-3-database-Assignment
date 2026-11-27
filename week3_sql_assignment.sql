-- ============================================================
-- Week 3 Assignment: Transactions and Aggregate Functions
-- Database: sales
-- ============================================================

USE sales;

-- ------------------------------------------------------------
-- Question 1: Create the student table
-- id is the primary key; fullName holds up to 100 characters.
-- ------------------------------------------------------------
CREATE TABLE student (
    id       INT PRIMARY KEY,
    fullName VARCHAR(100),
    age      INT
);

-- ------------------------------------------------------------
-- Question 2: Insert at least 3 records
-- ------------------------------------------------------------
INSERT INTO student (id, fullName, age)
VALUES
    (1, 'Alice Johnson', 19),
    (2, 'Brian Smith',   21),
    (3, 'Carla Mendes',  22);

-- ------------------------------------------------------------
-- Question 3: Update the age of the student with ID 2 to 20
-- ------------------------------------------------------------
UPDATE student
SET age = 20
WHERE id = 2;

-- ------------------------------------------------------------
-- Check the results
-- ------------------------------------------------------------
SELECT * FROM student;

-- ------------------------------------------------------------
-- Optional: the same insert and update inside a transaction
-- (use this version if your instructor expects transaction
-- control; run it instead of Questions 2 and 3 above, not
-- after them, or the inserts will fail on duplicate ids)
-- ------------------------------------------------------------
-- START TRANSACTION;
--
-- INSERT INTO student (id, fullName, age)
-- VALUES
--     (1, 'Alice Johnson', 19),
--     (2, 'Brian Smith',   21),
--     (3, 'Carla Mendes',  22);
--
-- UPDATE student
-- SET age = 20
-- WHERE id = 2;
--
-- COMMIT;   -- use ROLLBACK; instead to undo the changes
