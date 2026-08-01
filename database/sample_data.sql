USE expense_tracker;

INSERT INTO users (user_id, full_name, email) VALUES
(1,'Aarav Sharma','aarav@example.com'),
(2,'Diya Verma','diya@example.com'),
(3,'Kabir Singh','kabir@example.com'),
(4,'Meera Gupta','meera@example.com'),
(5,'Rohan Kumar','rohan@example.com');

INSERT INTO categories (category_name) VALUES
('Housing'),('Food'),('Transport'),('Shopping'),('Entertainment'),
('Utilities'),('Healthcare'),('Education'),('Travel'),('Other');

-- Import data/expense_transactions.csv into a staging table or your SQL client,
-- then map category names to category_id when inserting into transactions.
