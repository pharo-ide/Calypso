I am a root of hierarchy of queries.
My subclasses implement specific logic how to retrieve particular objects from given environment scope. 

Any query should be created with scope:

	query := ClyAllMethods from: scope
	
And to create scope instance you need some navigation environment. For example to query Smalltalk image there is global environment: 

	scope := ClyClassScope of: Object in: ClyNavigationEnvironment currentImage.
	
When query is ready you can simply execute it: 

	result := query execute.
	
The result of any query is an instance of ClyQueryResult subclasses.
By default it is always ClyRawQueryResult which do not apply any formatting or transformation on retrieved items.
The required result is a parameter of any query, the variable #requiredResult. It is used as prototype to create actual result instances. During execution query creates it using: 

	actualResult := requiredResult prepareNewFor: aQuery in: environment
	
To create query instances using concrete result you can specify it as extra parameter. I provide simple method #as:: 

	QueryClass as: ClySpecialQueryResult new.

But subclasses provide better versions with all parameters. For example: 

	ClyAllClassQuery from: packageScope as: ClySubclassHierarchy new asQueryResult.
	
You can also convert given query with new result: 

	aQuery withResult: ClySpecialQueryResult new
	
There are other converting methods which are supported by any kind of queries: 

- withScope: aScope, it returnes similar query but with different scope
- withScopeOf: newBasisObjects, it returns similar query with scope of different basis
- filtereBy: anItemFilter, it returns wrapper query which filters original query result with given filter

Subclasses must implement several methods. The main methods are: 
	
- buildResult: aQueryResult 
It is the method where query retrieves items from the scope and fill given result with them. Look at implementors.

- checkEmptyResult. 
Subclasses should be able detect that result will be empty without execution.

Other methods are implemented by more concrete abstract classes. Look at them for details. 


---------------more about changes-----------------------
Scopes cache result of all evaluated queries (look ClyEnvironmentScope comment). It requires correct comparison methods in all my subclasses. Equality and hash methods should consider own and superclasses state. For example I use requestedContent variable to implement them.

Cached result requires maintainance: if related system change is happen then result should be recomputed. I detect it in method #isResult:affectedBy:. I allow subclasses to define simple #isResultCanBeAffectedBy: where they can ignore not related changes. And then I ask result is it affected by given change:

	isResult: anEnvironmentContent affectedBy: aSystemAnnouncement
		^(self isResultCanBeAffectedBy: aSystemAnnouncement)
			and: [ anEnvironmentContent isAffectedBy: aSystemAnnouncement]
			
For example ClyMessageSenders query asks given system change if affected method uses query selectors or not.

I provide #description method to be shown by tools with user friendly string. My subclasses override it for better results. Look at ClyMessageSenders for example.

Internal Representation and Key Implementation Points.

    Instance Variables
	requestedContent:		<ClyEnvironmentContent class>
			