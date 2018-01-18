My subclasses represent the scope of concrete typed objects.

For example there is ClyClassScope which is based on set of classes. And there is ClyPackageScope which is based on set of packages.

I provide several methods to instantiate typed scopes:

	ClyClassScope of: String.
	ClyClassScope of: String in: ClyNavigationEnvironment currentImage.
	ClyClassScope of: String in: ClyNavigationEnvironment currentImage named: 'String scope'.

They create class scopes based on single basis object String.

	ClyClassScope ofAll: {String. Point}.
	ClyClassScope of: {String. Point} in: ClyNavigationEnvironment currentImage.
	ClyClassScope of: {String. Point} in: ClyNavigationEnvironment currentImage named: 'String and Point'.

They create scopes of two classes String and Point.

Also users can ask for empty scope: 

	ClyClassScope empty.
	ClyClassScope emptyIn: ClyNavigationEnvironment.
	
I implement several methods convert existing scopes to new one with modified basis:

- withNewBasisObjects: newBasisObjects
It returns new scope similar to receiver but with basis.

- withExtraBasisObject: extraBasisObject 
It returnes new scope similar to receiver but with basis extended by given extraBasisObject.

- withExtraBasisObjects: extraBasisObjects 
It returnes new scope similar to receiver but with basis extended by all extraBasisObjects.

- withoutBasisObject: existingBasisObject 
It returnes new scope similar to receiver but with basis which excludes existingBasisObject. It ignores the case when given object is not in the basis of receiver scope.

- withoutBasisObjects: existingBasisObjects 
It returnes new scope similar to receiver but with basis which excludes all existingBasisObjects. It ignores the case when some of given objects are not in the basis of receiver scope.

- restrictedBy: anotherScope
It returnes new scope similar to receiver but with basis of given anotherScope

Also I provide scope composition method which merges two scopes: 
	
	(ClyClassScope of: String) , (ClyClassScope of: Array)
	
It returns ClyCompositeScope instance. 

To support composite scope and query I introduce method #asUnifiedInstance which supposed to return similar scope with same kind of scope class and internal parameters but with empty basis.
So any possible instance of my subclass should produce equal unified instance with this method. It is used to merge subqueries and their scopes when ClyUnionQuery is built. 
	
Also I implement my superclass abstract methods like: 
- supportsQuery: aQuery. It returns true for any kind of ClyTypedQuery.
- representsScope: aScopeClass. It just checks if receiver is kind of given scope class.
- adoptQuery: aQuery. It just assigns receiver to the aQuery to be it scope.
