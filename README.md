# CAR SHOP MANAGEMENT SYSTEM
Here I create a database based on sql for my academic purpose. <br>
My car shop name is “Car Network”. The objective of this project is to develop a database on Car Shop Management System. From this project we can get a clear idea
about how the database works and how we can use this. 
“The Car Shop Management System” is one can go into almost required solution regarding the Car Shop.There are various type of tabless available to manage brand_ambassador ,
car_details , customer, employee, payment_bill , purchase, stock, upcoming_cars. The details of Car is store into the Car tables respective with all tables. <br>
Each table contains primary key and unique keys. There is one to one and one to many relations available between customer, paymentBill ,
purchase, stock, car_details. We have implemented indexing on each tables of Car Shop Management System tables for fast query execution.
<br> <br>
## Overall my database project 
![overAll](https://user-images.githubusercontent.com/64780532/119836894-ec0d7e80-bf23-11eb-8ca1-9b22c882069f.png)

<br>
Here total eight tables which are , <br>
1) car_details <br>
2) brand_ambassador <br>
3) customer <br>
4) employee <br>
5) payment_bill <br>
6) Purchase <br>
7) stock  <br>
8) upcoming_cars <br>
<br>

## Demonstration
<b> Query 1 : Find employee name , posting branch , responsibility and salary whose alary are greater than the average salary. </b>
<br>
<strong>
SELECT `emp_name`,`emp_posting_branch`,`emp_responsibility`,`emp_salary` <br>
FROM `employee` <br>
WHERE `emp_salary` > (select AVG(`emp_salary`) FROM employee ) <br>
</strong>
