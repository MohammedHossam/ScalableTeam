-- Procedure that edits the user's name--
create or replace procedure edit_user_name(
   user_id int,
   user_name varchar
)
language plpgsql
as $$
begin
    update users
    set name = user_name
    where id = user_id;

end;$$