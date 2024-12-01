SELECT rs.first_name, rs.surname, rb.bill_date, COUNT(rb.bill_no) AS number_of_bills
FROM restBill rb
JOIN restStaff rs ON rb.waiter_no = rs.staff_no
GROUP BY rs.staff_no, rb.bill_date
HAVING COUNT(rb.bill_no) >= 2;

SELECT rt.room_name, COUNT(rt.table_no) AS number_of_tables
FROM restRest_table rt
WHERE rt.no_of_seats > 6
GROUP BY rt.room_name;


SELECT rt.room_name, SUM(rb.bill_total) AS total_bill_amount
FROM restBill rb
JOIN restRest_table rt ON rb.table_no = rt.table_no
GROUP BY rt.room_name;


SELECT rs.first_name AS headwaiter_first_name, rs.surname AS headwaiter_surname, 
       SUM(rb.bill_total) AS total_bill_amount
FROM restStaff rs
JOIN restStaff rw ON rs.staff_no = rw.headwaiter
JOIN restBill rb ON rw.staff_no = rb.waiter_no
GROUP BY rs.staff_no
ORDER BY total_bill_amount DESC;

SELECT rb.cust_name
FROM restBill rb
GROUP BY rb.cust_name
HAVING AVG(rb.bill_total) > 400.00;


SELECT rs.first_name, rs.surname, COUNT(rb.bill_no) AS number_of_bills
FROM restBill rb
JOIN restStaff rs ON rb.waiter_no = rs.staff_no
GROUP BY rs.staff_no, rb.bill_date
HAVING COUNT(rb.bill_no) >= 3;




