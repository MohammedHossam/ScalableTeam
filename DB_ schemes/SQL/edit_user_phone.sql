create or replace procedure edit_user_phone(
   user_id int,
   user_phone varchar
)
language plpgsql
as $$
begin
    update users
    set phone = user_phone
    where id = user_id;

end;$$

