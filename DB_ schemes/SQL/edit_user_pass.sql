
-- Procedure that edits the user's password--

create or replace procedure edit_user_password(
   user_id int,
   user_password varchar
)
language plpgsql
as $$
begin
    update users
    set password = user_password
    where id = user_id;

end;$$
