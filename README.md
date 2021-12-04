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
Here is total eight tables which are , <br>
1) car_details <br>
2) brand_ambassador <br>
3) customer <br>
4) employee <br>
5) payment_bill <br>
6) Purchase <br>
7) stock  <br>
8) upcoming_cars <br>


## Demonstration
<b> Query 1 : Find employee name , posting branch , responsibility and salary whose salary are greater than the average salary. </b>
<br> <br>
<strong>
SELECT `emp_name`,`emp_posting_branch`,`emp_responsibility`,`emp_salary` <br>
FROM `employee` <br>
WHERE `emp_salary` > (select AVG(`emp_salary`) FROM employee ) <br>
</strong>
<br>
![q1](https://user-images.githubusercontent.com/64780532/119839651-237d2a80-bf26-11eb-8e53-355d5b9e1a40.png)
<br> <br>

<b> Query 2 : Find car brand , car model , car type , top speed and price which are between 36 lakhs to 45 lakhs  </b>
<br> <br>
<strong>
SELECT `brand`,`car_model`,`car_type`,`top_speed`,`price_taka` <br>
FROM `car_details` <br>
WHERE `price_taka` between 3600000 and 4500000 <br>
<strong>
<br>
![q2](https://user-images.githubusercontent.com/64780532/119840232-9dadaf00-bf26-11eb-9099-905b13f8629a.png)
<br> <br>

<b> Query 3 : Find purchase car brand , car model , car price , purchase date from payment bill and purchase table.  </b> 
<br> <br>
<strong>
SELECT `purchase_car_brand`,`car_model`,`car_price`, 'purchase_date' <br>
FROM `payment_bill` JOIN purchase <br>
ON payment_bill.customer_id = purchase.customer_id <br>
</strong>
<br>
![q3](https://user-images.githubusercontent.com/64780532/119841159-655aa080-bf27-11eb-9407-26f5787d720d.png)
<br> <br>

<b> Query 4 : Find upcomming car brand , car model , car type , number of seat , top speed and price from Audi , Aston Martin , BMW and Abarth brand  </b>
<br> <br>
<strong>
SELECT `brand`,`car_model`,`car_type`,`number_of_seat`,`top_speed`,`price_taka`  <br>
FROM `upcoming_cars`  <br>
WHERE brand = 'Audi' or brand = 'Aston Martin' or brand = 'BMW ' or brand = 'Abarth '   <br>
</strong>
 <br>
  ![q4](https://user-images.githubusercontent.com/64780532/119842245-54f6f580-bf28-11eb-81ba-97f5457e0764.png)
 <br>
 
 <h2> Thank You! </h2>
