-- USERS TABLE 'following the schema'--
CREATE TABLE Users (
    id  INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(255) NOT NULL,
    username varchar(255) NOT NULL unique,
    email varchar(255) NOT NULL unique,
    password varchar(255) NOT NULL,
    phone VARCHAR
);
