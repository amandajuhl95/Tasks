# Tasks
 
 
### Exercise - SQL
 

#### First problem: 






#### Second problem:



```sql
SELECT PersonId, count(*) AS amount_of_visits
FROM CheckIns 
GROUP BY personId
HAVING count(*) = 100;
```


##### ALTERNATIV

```sql
SELECT Persons.FirstName, Persons.LastName
FROM Persons
LEFT JOIN (
	SELECT PersonId, COUNT(*) AS amount_of_visits
	FROM CheckIns
	GROUP BY PersonId
	HAVING count(*) = 100
) counts ON counts.PersonId = Persons.PersonId;
```

