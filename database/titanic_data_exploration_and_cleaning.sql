--Data Exploration

SELECT * FROM titanic;

Select * 
From titanic 
where titanic.Survived = 1


Select PassengerId ,Survived  , Pclass ,[Name] ,Sex , SibSp , Fare ,Embarked
From titanic





SELECT PassengerId, Survived, Pclass, [Name], Sex, SibSp, Fare, Embarked
FROM titanic
WHERE Embarked IS NULL;

SELECT TOP 1 WITH TIES Embarked
FROM titanic
GROUP BY Embarked
ORDER BY COUNT(*) DESC;

SELECT Count(Survived) as NUMBER_OF_Survived
From titanic 
WHERE Survived = 1

SELECT Count(Survived) as NUMBER_OF_NOT_Survived
From titanic 
WHERE Survived = 0

SELECT Sum(Fare) as sum_of_fares , Pclass
From titanic 
Group by Pclass
order by sum_of_fares Desc

Select PassengerId ,Survived  , Pclass ,[Name] ,Sex , SibSp , Fare ,Embarked
From titanic

SELECT Count(SEX) as NUMBER_OF_Males
From titanic 
WHERE SEX = 'male'

SELECT Count(SEX) as NUMBER_OF_females
From titanic 
WHERE SEX = 'female'

SELECT Count(Embarked) as NUMBER_OF_Southampton_Embarked
From titanic 
WHERE Embarked = 'S'


SELECT Count(Embarked) as NUMBER_OF_Cherbourg_Embarked
From titanic 
WHERE Embarked = 'C'

SELECT Count(Embarked) as NUMBER_OF_Queenstown_Embarked
From titanic 
WHERE Embarked = 'Q'


Select PassengerId ,Survived  , Pclass ,[Name] ,Sex , SibSp , Fare ,Embarked
From titanic

SELECT Count([Name]) as num_of_people_have_sibsp
From titanic 
WHERE SibSp >0

SELECT Count([Name]) as num_of_people_have_sibsp_and_they_survived
From titanic 
WHERE SibSp >0 and Survived =1

Select PassengerId ,Survived  ,Age, Pclass ,[Name] ,Sex , SibSp , Fare ,Embarked
From titanic 





------------------------------------------------------------------------------
--Data Cleaning
Update titanic
set Embarked = 'S'
WHERE Embarked IS NULL

Alter table titanic 
drop column Ticket , Cabin , Parch



Update titanic
set Age = (
Select Ceiling(Avg(Age)) as AGE_Average
From titanic
)
WHERE Age IS NULL