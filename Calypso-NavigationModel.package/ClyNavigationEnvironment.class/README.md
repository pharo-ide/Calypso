I am environment where user navigates over particular system by quering objects from particular scope of other objects. 
I cache query results and extend retrieve objects using builtin plugin system.

My instances should be created over some system: 

	environment := ClyNavigationEnvironment over: aSystem

I do not provide any requirement for the class of target system. It can be any object from particular domain which represents the global view on it.
But Calypso requires two things which system should implement. It can define them as extension inside Calypso integration package:

1) The system should provide global scope which will adopt it to Calypso navigation model. This scope will represent the root place where all objects in system can be reached.
Concrete system should implement subclass of ClySystemScope and return it instance as global scope of actual system object. It should be returned from method #asGlobalScopeIn: which system should implement.
Users can access the system and it scope from my instance:
	
	environment system
	environment systemScope

2) The system should notify my instance about changes.
I maintain query cache and it requires invalidation when system is changed. So responsibility of any system is to subscribe and unsubscribe my instances for possible changes: 
	
	aSystem subscribe: environment
	aSystem unsubscribe: environment
	
I am subscribed when I am attaching to the system:
	
	environment attachToSystem
	
And I am unsubscribed when detaching: 

	environment detachFromSystem
	
User should manually attach my instances to the system when they are interested in updates.

I should not be subclassed. 

Users can maintain singleton instance of me for concrete system. It will provide global cache for all queries over given system.
For this purpose I provide class side variable defaultGlobalEnvironments. It maps system instance to my instance (aNavigationEnvironment) over it.
Idea that applications usually have kind of default system instance (imaging Smalltalk global). And to provide default navigation over it users can extend my class side with appropriate accessing method. 
For example navigation over current Smalltalk image is accessed using #currentImage method: 

	ClyNavigationEnvironment class>>currentImage 	
		^self defaultOver: ClySystemEnvironment currentImage

The method #defaultOver: retrieves existing instance or creates new one. Such default instances are automatically attached to the system.
In this example the system is an instance of ClySystemEnvironment which represents Smalltalk system. (it was suitable to introduce extra wrapper for this domain. Look it comment for details).

To reset all global environments send #reset message to me: 

	ClyNavigationEnvironment reset
	
It will detach (unsubscribe) environments from their systems and clear collection.

I provide #query: method to execute queries using cache. But userrs should not use it directly.
Users should prepare scope instance using given environment:

	scope := ClyClassScope of: Object in: environment 

And then create and execute query instance: 

	query := ClyAllMethods from: scope.
	query execute

Underhood my #query: method is called by scope during query execution logic. I returns existing result if it exists. Otherwise I build new one.

There is another method which allow to check that given query will produce empty result:
	
	environment isQueryEmpty: query
	
It also should not be used directly. But query should be asked directly: 

	query hasEmptyResult

If there is existing result then I just check that it is not empty. Otherwise I ask query to #checkEmptyResult where it evaluates actual logic.

To maintain query cache I use two mutexes:

- accessGuard, protects any modification of queryCache
- updateGuard, protects cache updating in the way that multiple changes will be always processed in sequence

In my cache the query is a key and the result is a value. The cache is weak and unused result is cleaned by GC. In same time unused keys (queries which result is cleaned) are collected when new query is executed (using #cleanGarbageInCache).

I am extendable by plugins, subclasses of ClyEnvironmentPlugin. Plugins are responsible to extend queries of particular system in following ways:

- plugin can extend properties of query result (ClyBrowserItem instances and query metadata).
- plugin can supply information about other systems. 
Plugins are packaged separatelly. Plugin package can extend visibility of existing scopes by providing new information from external systems. This information can be retrieved by new queries.
And to manage this information plugin should notify environment about external changes.

To add plugin use following method:

	environment addPlugin: MyTestPlugin new.
	
And to access plugins use: 
	
	environment pluginsDo: aBlock
	
When I am attached to the system I also attach all my plugins to it using:

	plugin attachToSystem

In this method plugin is able to subscribe on own system changes to notify environment about them.
 
Internal Representation and Key Implementation Points.

    Instance Variables 
	plugins:		<Collection of<ClyEnvironmentPlugin>>>
	queryCache:		<WeakValueDictionary of<ClyQuery, ClyQueryResult>>
	system: 	<Object>
	updateStrategy:	<ClyEnvironmentUpdateStrategy>
	updateGuard:	<Mutex>
	accessGuard:	<Mutex>