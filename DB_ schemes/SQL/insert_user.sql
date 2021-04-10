-- Function that creates a new user and returns their unique ID--
CREATE OR REPLACE function new_user(
    name varchar,
    username varchar,
    email varchar,
    password varchar,
    phone varchar
    )
  RETURNS int AS
$BODY$
DECLARE
   u_id int;
BEGIN
   Insert into users (name,username,email,password,phone)
   VALUES (name,username,email,password,phone)
   RETURNING id INTO u_id;

    RETURN u_id;
END;
$BODY$
  LANGUAGE plpgsql;
