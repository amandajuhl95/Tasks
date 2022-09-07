
# Problem 1:
SELECT PersonId, count(*) AS amount_of_visits
FROM CheckIns 
GROUP BY personId
HAVING count(*) = 100;


# Problem 2
SELECT CheckIns.Club,
sum(case when CheckIns.Club = Persons.HomeClub then 1 else 0 end ) as checkins_from_members_registered_in_this_club,
sum(case when CheckIns.Club != Persons.Homeclub then 1 else 0 end) as checkins_from_members_registered_in_other_clubs
FROM CheckIns
LEFT JOIN Persons 
ON CheckIns.PersonId = Persons.PersonId
WHERE CheckIns.CheckInTime > CURRENT_DATE - INTERVAL '6 months'
GROUP BY CheckIns.Club;
