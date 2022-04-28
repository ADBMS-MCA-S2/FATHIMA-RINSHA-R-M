use employee;
GRANT DELETE ON employee TO 'heylo'@'localhost';
REVOKE DELETE ON employee FROM 'heylo'@'localhost'; 
REVOKE DELETE ON *.* FROM 'heylo'@'localhost';
SHOW GRANTS FOR 'heylo'@'localhost';