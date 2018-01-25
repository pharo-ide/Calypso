My subclasses represent specific point of view on system environment. 
They play role of source of data for queries which are always executed from concrete scope instance.

Concrete types of scopes implement several methods to access concrete type of objects which are visible from given scope. This methods are supposed to be in form of enumeration based on block:
	aScope someKindOfObjectsDo: aBlockWithObjectArg
For example ClyPackageScope shows objects which are visible from given packages: packages, classes and methods. And to access them it implements following methods:
- packagesDo:
- classesDo:
- methodsDo:

Scope instances are always created in some environment and based on set of basis objects. Basis objects are the root of information which scope can provide for queries.
Scopes which are based on single type objects are represented by subclasses of ClyTypedScope. They provide instance creation methods:

	scope := ClyPackageScope of: 'Kernel' asPackage in: ClyNavigationEnvironment currentImage.
	scope := ClyPackageScope ofAll: {'Kernel' asPackage. 'Alien' asPackage} in: ClyNavigationEnvironment currentImage.

For more information read ClyTypedScope comment.
I do not provide any constructor because I do not know how concrete scope will be created, how it will setup the basis.
But I provide set of operation to convert any scope to the given typed scope class:
- asScope: aTypedScopeClass. It creates instance of given scope class using receiver basis and environment.
- asScope: aTypedScopeClass of: singleBasisObject. It creates instance of given scope class using given singleBasisObject and receiver environment.
- asScope: aTypedScopeClass ofAll: newBasisObjects. It creates instance of given scope class using given newBasisObjects and receiver environment.
So the main point of these methods is to create new scope instances with existing properties of given scope. Where environment is always shared. 

Also I implement several testing methods which are used in some UI logic:
- isBasedOn: aBasisObject
- isBasedOnEmptyBasis
- isBasedOnSingleBasis
- isBasedOnMultipleBasis

Although it is preferred to instantiate scopes in the environment in some cases it is conveinient to bound scope to the environment separately from instantiation. 
For this purpose there are few methods:
- isBoundToEnvironment
- bindTo: aNavigationEnvironment

Scope is integral part of query. So it participates in environment query cache. And therefore any scope should correctly implement comparison: equal and hash operations. 
I provide default implementation based on basis objects. And subclasses which introduce extra parameters should provide specialized implementation.
Also it adds restriction that scope should be completaly initialized at query execution time and after it should never be modified. It is protected by write barrier logic when query fixes state before execution. It forces scope to beReadOnlyObject.

To support query execution I also provide several methods which are supposed to not be used externally:
- query: aQuery
- isQueryEmpty: aQuery
These methods are called by query. And I just delegate them to the environment.
Also subclasses should implement #adoptQuery: method to prepare given query for execution from receiver.
For example there is composite scope which converts given query to the composite query. Because simple query can't be executed directly from composite.
And by same reason I require subclasses implement:
- supportsQuery: aQuery
Query checks it when it is assigned to the scope. It allows to detect incompatibitily early and signal error.

Also in case of composite scope users can be still interested to know that they work with some simple scope which is part of composite. 
To made such test independent of type of scope I require subclasses to implement:
- representsScope: aScopeClass 
In case of composte it will check subscopes. And in case of simple scope it will simply check isKindOf:.

In addition I provide printing infrastructure.
Subclasses can define class side method #defaultName. And users can override it in instance:
	aScope name: 'special name'  
I implement #description with these names which is used in UI and to print queries:
	aScope description
In addition basis objects are appended in the end of desription. 
Subclasses can specialize how basis objects are printed using method #printBasisObject:on:.
For printString logic I just print basis in brackets. 
Look at examples:
	(ClyPackageScope of: 'Kernel' asPackage) description "==> 'packages: Kernel'"
	(ClyPackageScope of: 'Kernel' asPackage) printString "==>  'a ClyPackageScope(Kernel)'"
 
Internal Representation and Key Implementation Points.

    Instance Variables
	basisObjects:		<Set>
	environment:		<ClyNavigationEnvironment>
	name:		String