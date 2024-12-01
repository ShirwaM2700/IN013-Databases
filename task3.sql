SELECT DISTINCT rs.first_name, rs.surname
FROM restStaff rs
JOIN restBill rb ON rs.staff_no = rb.waiter_no
WHERE rb.cust_name = 'Tanya Singh';

SELECT DISTINCT rrm.room_date
FROM restRoom_management rrm
JOIN restStaff rs ON rrm.headwaiter = rs.staff_no
WHERE rs.first_name = 'Charles'
  AND rrm.room_name = 'Green'
  AND rrm.room_date BETWEEN 160201 AND 160229;


SELECT DISTINCT rs.first_name, rs.surname
FROM restStaff rs
WHERE rs.headwaiter = (
    SELECT headwaiter
    FROM restStaff
    WHERE first_name = 'Zoe' AND surname = 'Ball'
);

SELECT rb.cust_name, rb.bill_total, CONCAT(rs.first_name, ' ', rs.surname) AS waiter_name
FROM restBill rb
JOIN restStaff rs ON rb.waiter_no = rs.staff_no
ORDER BY rb.bill_total DESC;

SELECT DISTINCT rs.first_name, rs.surname
FROM restStaff rs
JOIN restBill rb ON rs.staff_no = rb.waiter_no
WHERE rb.table_no IN (
    SELECT DISTINCT rb1.table_no
    FROM restBill rb1
    WHERE rb1.bill_no IN (14, 17)
);


SELECT DISTINCT rs.first_name, rs.surname
FROM restStaff rs
WHERE rs.staff_no IN (
    SELECT DISTINCT rb.waiter_no
    FROM restBill rb
    JOIN restRest_table rt ON rb.table_no = rt.table_no
    WHERE rt.room_name = 'Blue' AND rb.bill_date = 160312
)
OR rs.staff_no = (
    SELECT rrm.headwaiter
    FROM restRoom_management rrm
    WHERE rrm.room_name = 'Blue' AND rrm.room_date = 160312
);



