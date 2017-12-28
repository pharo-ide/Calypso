I represent composition of queries. 
I am abstract class and my subclasses implement concrete logic what to do with subqueries.
They should only implement three methods: 

- buildResult: aQueryResult 
Subclasses should deside what to do with result of subqueries.

- #unionWith: typedQueries as: aQueryResult
Subclasses should implement how union itself with given query collection.

- #, anotherQuery 
Subclasses should implement union with another query.

Other methods from the superclass I implement using delegation to my subqueries.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	subqueries:		<Set of: <ClyQuery>>