SELECT DISTINCT rb.cust_name
FROM restBill rb
JOIN restRoom_management rrm ON rb.bill_date = rrm.room_date
JOIN restStaff rs ON rrm.headwaiter = rs.staff_no
WHERE rs.first_name = 'Charles'
  AND rb.bill_total > 450.00;

SELECT rs.first_name, rs.surname
FROM restStaff rs
JOIN restRoom_management rrm ON rs.staff_no = rrm.headwaiter
JOIN restRest_table rt ON rrm.room_name = rt.room_name
JOIN restBill rb ON rt.table_no = rb.table_no
WHERE rb.cust_name = 'Nerida Smith' AND rb.bill_date = 160111;


SELECT rb.cust_name
FROM restBill rb
WHERE rb.bill_total = (
    SELECT MIN(bill_total)
    FROM restBill
);


SELECT rs.first_name, rs.surname
FROM restStaff rs
LEFT JOIN restBill rb ON rs.staff_no = rb.waiter_no
WHERE rb.bill_no IS NULL;


SELECT rb.cust_name, rs.first_name AS headwaiter_first_name, rs.surname AS headwaiter_surname, rt.room_name
FROM restBill rb
JOIN restRest_table rt ON rb.table_no = rt.table_no
JOIN restRoom_management rrm ON rt.room_name = rrm.room_name AND rb.bill_date = rrm.room_date
JOIN restStaff rs ON rrm.headwaiter = rs.staff_no
WHERE rb.bill_total = (
    SELECT MAX(bill_total)
    FROM restBill
);




