CREATE user 'cfms'@'localhost';
set password for 'cfms'@'localhost' = password('secret');

grant all privileges on cfms.* to 'cfms'@'localhost';

flush privileges;