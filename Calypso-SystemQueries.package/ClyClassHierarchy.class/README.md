My subclasses provide model of different kind of class hierarchies.
They define concrete relationship between classes which are used to build hierarchies.
The result of build is an instance of ClyClassHierarchyMap which provides dictionary between parent classes and their children.
To build map instance use following message: 

	map := ClySubclassHierarchy new buildFrom: { Object. Array }.

or simply ask class for this:

	map := ClySubclassHierarchy buildFrom: { Object. Array }.

With hierarchy map you can iterate classes in hierarchical order: 

	map doInOrder: [ :class | ].
	map doInOrderWithDepth: [ :class :depth | ].

And you can ask map for children of class: 

	map childrenOf: Object.
	
Or you can also access the roots: 

	map rootsDo: [ :class | ]

The children are collected as sorted list which order is defined by #sortFunction.
So you can build hierarchies where children are sorted by different criterias. By default they are sorted by class name in ascending order.
To instantiate hierarchy with another sort function use following expression:
	
	ClySubclassHierarchy sortedBy: aSortFunction 
	
And you can build sorted hierarchy using short class side method:

	ClySubclassHierarchy buildFrom: Smalltalk allClasses sortedBy: ClySortByNameFunction descending.

It will sort children by class name in reversed order.

And you can convert any hierarchy to new sorted version: 

	newHierarchy := aHierarchy sortedBy: aSortFunction.

So subclasses define relationship between classes. They should implement following method:

- buildParentMap: aHierarchyMap for: aClass

where they add every pair parent and aClass to the map. They should do it using following method: 

	aHierarchyMap addChild: aClass to: eachParentClass

Look at implementors of #buildParentMap:for: for examples.

The relationship which defined by each subclass arranges kind of natural order of hierarchy. But it can be inverted.
For example natural order of ClySubclassHierarchy will put all common superclasses to the roots of hierarchy.
And inverse version will put all leaf subclasses to the roots.

I encode flag inverse logic in the variable #inverse. You can create inverse hierarchies with following expression: 

	ClySubclassHierarchy inverse.

Or you can build inverse hierarchy with short class side methods: 

	ClySubclassHierarchy buildInverseFrom: {Object. String}.
	ClySubclassHierarchy buildInverseFrom: {Object. String} sortedBy: aSortFunction.

You can see in inspector that in first expression the root is String class.

And you can convert any hierarchy to the inverted version: 

	newHierarchy := aHierarchy inverted.

Also I provide converting method to create query result which you can pass to the queries: 

	ClyAllClasses as: ClySubclassHierarchy inverse asQueryResult 

Internal Representation and Key Implementation Points.

    Instance Variables
	inverse:		<Boolean>
	sortFunction:		<SortFunction>