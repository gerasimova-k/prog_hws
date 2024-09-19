SELECT time_in 
FROM Trip
JOIN Pass_in_trip ON Trip.id = Pass_in_trip.trip
JOIN Passenger ON Pass_in_trip.passenger  = Passenger.id 
WHERE name = "Steve Martin" AND town_to = "London"

SELECT name, COUNT(*) AS count 
FROM Passenger
JOIN Pass_in_trip ON Passenger.id = Pass_in_trip.passenger 
GROUP BY passenger 
HAVING COUNT(trip) > 0
ORDER BY COUNT(trip) DESC, name 

SELECT member_name, status, SUM(amount*unit_price) AS costs
FROM FamilyMembers
JOIN Payments ON FamilyMembers.member_id = Payments.family_member 
WHERE YEAR(date) = 2005 AND amount != 0
GROUP BY member_name, status 

SELECT member_name 
FROM FamilyMembers
WHERE birthday = (SELECT MIN(birthday) FROM FamilyMembers)

SELECT DISTINCT status 
FROM FamilyMembers
JOIN Payments ON FamilyMembers.member_id = Payments.family_member 
JOIN Goods ON Payments.good = Goods.good_id 
WHERE good_name = 'potato';

SELECT status, member_name, SUM(Payments.amount * Payments.unit_price) as costs 
FROM FamilyMembers
JOIN Payments ON FamilyMembers.member_id = Payments.family_member 
JOIN Goods ON Payments.good = Goods.good_id 
JOIN GoodTypes ON Goods.type = GoodTypes.good_type_id 
WHERE good_type_name = 'entertainment'
GROUP BY FamilyMembers.status, FamilyMembers.member_name 

SELECT good_name 
FROM Goods
JOIN Payments ON Goods.good_id = Payments.good 
GROUP BY good 
HAVING COUNT(good) > 1

SELECT member_name 
FROM FamilyMembers
WHERE status = 'mother'
