# THE UPDATE STATEMENT IS DIFFERENT FROM WHAT WAS ASKED BECAUSE MY DATABASE DESIGN IS A BIT DIFFERENT.
UPDATE `lab_mysql`.stores SET city = 'Amsterdam' WHERE store_id = 2;

# UPDATING EMAILS OF CUSTOMERS
UPDATE `lab_mysql`.customers set email = 'noemail@noprovider.com' where customer_id = 2;
UPDATE `lab_mysql`.customers set email = 'email@emailprovider.com' where customer_id = 4;
UPDATE `lab_mysql`.customers set email = 'that@email.com' where customer_id = 3;