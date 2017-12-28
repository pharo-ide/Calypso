I am a root of hierarchy of queries.
My subclasses implement specific logic how to retrieve particular objects from given environment scope. 

Any query should be created with scope:

	query := ClyAllMethods from: scope
	
And to create scope instance you need some navigation environment. For example to query Smalltalk image there is global environment: 

	scope := ClyClassScope of: Object in: ClyNavigationEnvironment currentImage.
	
When query is ready you can simply execute it: 

	result := query execute.
	
The result of any query is a kind of ClyQueryResult.
By default it is always ClyRawQueryResult which do not apply any formatting or transformation on retrieved items.
The required result is a parameter of any query, the variable #requiredResult. Responsibility of result is to format or transform items retrieved by query. 
For example there are ClySortedQueryResult which sort items using given sort funciton.

The value of requiredResult variable is used as prototype to create actual result instances. During execution the query creates it using: 

	actualResult := requiredResult prepareNewFor: aQuery in: environment
	
You can specify result when you create query instances. For example: 

	ClyAllClassQuery from: packageScope as: ClySubclassHierarchy new asQueryResult.
	
My subclasses provide various constructors to specify such parameters.
	
Any query instance can be converted to query with new required result: 

	aQuery withResult: ClySpecialQueryResult new
	
There are other converting methods which are supported by any kind of queries: 

- withScope: aScope, it returnes similar query but with different scope
- withScopeOf: newBasisObjects, it returns similar query with scope of different basis
- filtereBy: anItemFilter, it returns wrapper query which filters original query result using given filter

My subclasses must implement several methods: 
	
- buildResult: aQueryResult 
It is the method where query retrieves items from the scope and fill given result with them. Look at implementors.

- checkEmptyResult
Subclasses should be able detect that result will be empty without execution.

-isResult: aQueryResult affectedBy: aSystemAnnouncement
Any query can be affected by system changes. Subclasses should implement what change affects their results.

- retrivesItem: anObject
Subclasses should check that given item can be retrieved independently on scope.

- retrivesItemOfType: aClass
Subclasses should check what kind of items they retrieve.

- executesQuery: aTypedQueryClass
Subclasses should check that they in fact executes given query class. For example composite query will ask subqueries for this question. But typed queries will use simple isKindOf: check.

- withScope: aScope 
Subclasses should implement converting to the similar query from new given scope.

- withScopeOf: newBasisObjects 
Subclasses should implement converting to the similar query from the similar scope of new given basis.
 
- #unionWith: typedQueries as: aQueryResult
Subclasses should implement converting to composite query union given collection of subqueries.

- #, anotherQuery 
Subclasses should implement union with another query.

-collectMetadataOf: aQueryResult by: anEnvironmentPlugin
Subclasses should dispatch metadata collection to the given environment plugin.

Queries should define user friendly #description. I provide very general implementation based on class name. For example look at hierarchy implementors.

Navigation environment caches my instances and their results. It requires correct implementation of equality and hashing.
Some queries include various state which can be initialized at different time. It is important that instance will be not modified after execution because instead it can affect hash and equality functions which are used by cache. 
And to ensure it I implement special method #fixStateBeforeExecution which marks the instance and related state (the scope for example) as read only objects (#beReadOnlyObject). So after execution my instances became immutable.

And according to this logic I provide special hook #prepareStateBeforeExecution to prepare complete state of query instance before execution. It allows initialize lazy variables before making instance immutable.
			
The Calypso-Browser package provide UI widget to browse query results. For this purpose I provide helper method to open browser cursor:

	aQuery openBrowserCursorFor: anItemObserver

It is shortcut method to execute query and open cursor on result. So read details in ClyQueryResult comments.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	requestedResult:		<ClyQueryResult>
	scope:		<ClyScope>