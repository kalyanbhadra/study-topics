Part 1 - studyTopic_1.0
=======================================
This project followed instruction from below link:
https://www.mkyong.com/spring-boot/spring-boot-hello-world-example-jsp/

First part is kind of HELLO WORLD application.
The project stucture is created from springboot initilizr website.
The first version is running on embedded tomcat. Will change necessary changes to run standalone server in later commits.
To run the project we used:
mvn spring-boot:run 

I am trying to commit this project steps in different branches.
Git commands used:
1. git init
2. git checkout -b studyTopic_1.0
3. git add .
4. git commit -m "Springboot web mvc primary project structure"
5. git remote add origin https://github.com/kalyanbhadra/study-topics.git
6. git push -u origin studyTopic_1.0

You don't have to create branch in the github, the last command will create one for you.


Part 2 - studyTopic_2.0
=======================================
In part 2, I added JPA functionality to this project. I created a table called Topic, the script is in db.txt.
This table contains topic information. 
Changes has been done to display the list of topics in a page called topics.jsp. The url to request this page is:
http://localhost:8080/topics

These changes will be commited into different branch studyTopic_2.0


Part 3 - studyTopic_2.0
======================================
In part 3, codes added to create topic in the DB.
Also added hyperlink to the homepage.


Part 4 - studyTopic_3.0
======================================
Based on: https://hellokoding.com/registration-and-login-example-with-spring-security-spring-boot-spring-data-jpa-hsql-jsp/
Spring security module is added to the project for Authentication. User can register and login using their credentials.
Form validation is another thing that is also introduced.
