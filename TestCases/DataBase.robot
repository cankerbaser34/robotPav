*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem
Library  SeleniumLibrary

Suite Setup  Connect to Database    pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   welcome123
${DBHost}   LocalHost
${DBPort}   3306

*** Test Cases ***

# Create person table
#  ${output}=  Execute SQL String  Create table person(id integer,first_namen varchar(20),lastname varchar(20))
#    log to console    ${output}
#    should be equal as strings  ${output}   None

Inserting data in person table
## sinlgle Record
##    ${output}=  Execute SQL String  Insert into person values("101","Canker","Baser");
#
      ${output}=  Execute SQL Script    ./TestData/mydb_person_insert_data.sql
    log to console    ${output}
    should be equal as strings  ${output}   None

Check Kerem record present in Person Table
    check if exists in database     select id from mydb.person where first_namen="Kerem";

Check Cihan record not present in person Table
    check if not exists in database     select id from mydb.person where first_namen="Cihan";

Check Person table exits in mydb database
       table must exist  person

Verify Row count is Zero
    row count is 0  select * from mydb.person where first_namen="wt5";


Verify Row Count is Equal to Some Value
    row count is equal to x     select * from mydb.person where first_namen="Kerem";  1

Verify row count is greater than same value

    row count is greater than x     select * from mydb.person where first_namen="Kerem";    0

Verify Row Count is less than some value

    row count is less than x    select * from mydb.person where first_namen="Kerem";    5

Update record in person table

  ${output}=  Execute SQL String    Update mydb.person set first_namen="Za4" where id= 104;

  log to console     ${output}
  should be equal as strings     ${output}    None

Retrieve records from Person Table
        @{queryResults}=        query   Select * from mydb.person;
        log to console      many @{queryResults}


#Delete Records from person Table
#    Execute SQL string      Delete from mydb.person;
