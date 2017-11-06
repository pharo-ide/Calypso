My subclasses represent specific point of view on system environment. 
I am managed by navigation environment to produce queries over system:
	
	scope := ClyNavigationEnvironment currentImage selectScope: ClyPackageScope of: {#Kernel asPackage}.
	
Or you can create me manually:

	scope := ClyClassScope of: env basis: { Object. Point }

I am always created within list of basis objects which restrict what could be retrieved from environment from my point of view. In previous example scope will allow to see only methods of Object or Point classes.

I provide query operation to retrieve specific environment content: 

	scope query: ClySortedMethods.
	scope query: ClySortedMethodGroups

Argument of #query: message is instance of ClyEnvironmentQuery or compatible object (inside it is asked for #asEnvironmentQuery). 
In example concrete class of requested content is used. But it could be direct instance of query like: 

	scope query: (ClyAllItemsQuery requestedContent: ClySortedMethods).
	scope query: (ClyEnvironmentFilterQuery for: ClySortedMethods by: (ClyItemNameSubstringFilter pattern: 'test')).
	scope query: (ClyMessageSenders of: #do:).

There is most global scope where user can retrieve items. It is ClySystemScope. You can ask it from current image navigation environment: 

	scope := ClyNavigationEnvironment currentImageScope.
	
And you can query it directly:

	ClyNavigationEnvironment queryCurrentImageFor: ClySortedPackages.

I also provide suitable methods to create modified scopes. For example to create similar scope with extra basis object or without it:

	scope withExtraBasisObject: Collection.
	scope withoutBasisObject: Point

Or you can ask me for another kind of scope but with same basis: 
	
	classScope asScope: ClyClassSideScope.
	classScope asScope: ClyInstanceSideScope.
	
Look at queries protocol for more.

My subclasses should implement a couple of methods which used in double dispatch logic to call typed message according to my basis objects:

- buildContent: anEnvironmentContent 

For example ClyPackageScope will ask content for: 	
	anEnvironmentContent buildFromPackages: basisObjects

- class side resolvePropertiesOf: anEnvironmentItem by: anEnvironmentPlugin

For example ClyClassScope will ask plugin for: 
	anEnvironmentPlugin resolvePropertiesOfClass: anEnvironmentItem

I maintain weak cache of all executed queries. So any duplicated queries are performed fast and memory efficient.
This cache is a dictionary where keys are queries and values are result instances (anEnvironmentContent).

If my environment is attached to system I receive each system change to fix all my cached queries (method handleSystemChange:).

Public API and Key Messages

- query: anEnvironmentQueryOrEnvironmentContentClass
- withExtraBasisObject: anObject
- withoutBasisObject: anObject
- withCachedQueriesDo: aBlock
 
Internal Representation and Key Implementation Points.

    Instance Variables
	basisObjects:		<Array>
	environment:		<ClyNavigationEnvironment>
	queryCache:		<Dictionary of<EnvironmentQuery, EnvironmentContent>>