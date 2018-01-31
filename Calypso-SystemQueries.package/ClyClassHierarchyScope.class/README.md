I am a root of scope classes which show objects accessible from the particular kind of class hierarchy. 
For example there is ClySuperclassScope with superclasses of basis classes and all their methods (inherited by basis).
And there is ClySubclassScope which shows all subclasses and their methods.

I implement all abstract methods from superclass and introduce new method which should be defined by subclasses: 

- classesRelatedTo: aClass do: aBlock

In this method subclasses should evaluate given block with all other classes which are related to given aClass according to the logic of given class hierarchy.

My varable localScopeClass specifies what part of class itself is visible. It can be instance side, class side or both with corresponsing variable values: ClyInstanceSideScope, ClyClassSideScope and ClyBothMetaLevelClassScope.
I use this variable to define methods required for scope query protocol. Look at overrides for details.

To create instance I provide several new methods where you can specify local scope class:

	ClySubclassScope of: Array localScope: ClyClassSideScope.
	ClySubclassScope of: Array in: ClyNavigationEnvironment currentImage localScope: ClyInstanceSideScope.
	ClySubclassScope ofAll: {Array. Point} localScope: ClyBothMetaLevelClassScope.
	ClySubclassScope ofAll: {Array. Point} in: ClyNavigationEnvironment currentImage  localScope: ClyClassScope.
	
Internal Representation and Key Implementation Points.

    Instance Variables
	localScopeClass:		<ClyLocalClassScope class>