# Tasks

### Programming Task

- I have decided to solve the first programming task in Java with open-JDK18 and used junit5 to test the different methods. 

- I have only included test of two of the methods in the test suite, since these two methods are public and can be called outside the class. The last method is private and can only be called within the class. The methods are also simple and each only solves one task instead of multiple. 

- I have added minor exception handling.

- You can find my solution in the folder [CountingWords](https://github.com/amandajuhl95/Tasks/tree/main/CountingWords)
 
 
### SQL Task

- I have used PostgreSQL to solve these tasks. 
- I have created test data, which you can find in the folder [SQLScripts](https://github.com/amandajuhl95/Tasks/tree/main/SQLScripts)

NB! I have created a limited amount of data to prove that the SQl queries works, which means that 'HAVING count(*) = 100' needs to be set to lower number e.g. 4 

 
#### First problem: 

```sql
SELECT CheckIns.Club,
sum(case when CheckIns.Club = Persons.HomeClub then 1 else 0 end ) as checkins_from_members_registered_in_this_club,
sum(case when CheckIns.Club != Persons.Homeclub then 1 else 0 end) as checkins_from_members_registered_in_other_clubs
FROM CheckIns
LEFT JOIN Persons 
ON CheckIns.PersonId = Persons.PersonId
WHERE CheckIns.CheckInTime > CURRENT_DATE - INTERVAL '6 months'
GROUP BY CheckIns.Club;
```

#### Second problem:


```sql
SELECT PersonId, count(*) AS amount_of_visits
FROM CheckIns 
GROUP BY personId
HAVING count(*) = 100;
```


