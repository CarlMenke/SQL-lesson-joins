DROP TABLE IF EXISTS todos;
DROP TABLE IF EXISTS users;


-- Your Code Here
CREATE TABLE users(
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE todos(
    id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255),
    description VARCHAR(255),
    completed BOOLEAN NOT NULL,
    user_id VARCHAR(255) REFERENCES users(id)
);

\copy users FROM './data/users.csv' WITH (FORMAT csv);
\copy todos FROM './data/todos.csv' WITH (FORMAT csv);
-- Your Code Here
