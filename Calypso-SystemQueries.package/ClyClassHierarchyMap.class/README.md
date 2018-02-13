I represent the actual relationship between classes using simple map between parents and children.
Concrete type of hierarchy build my instances where it defines what classes should be parent and what should be children:

	aHierarchyMap addChild: childClass to: parentClass.

My instances are created by hierarchies using following method: 

	map := ClyClassHierarchyMap for: aHierarchy of: classes.

And my method #build initiates actual map building. 

Users do not need to create map directly. Instead they ask concrete hierarchy to build from classes: 

	map := ClySubclassHierarchy buildFrom: classes.

During building I collect roots which are used as a starting point to access classes in hierarchical order:

	map doInOrder: [ :class |  ]
	map doInOrderWithDepth: [ :class :depth | ]

You can also iterate roots: 

	map rootsDo: [ :class |  ]

Childen of every class are sorted according to the sort function of the hierarchy.

Internal Representation and Key Implementation Points.

    Instance Variables
	classes:		<IdentitySet<Class>>
	hierarchy:		<ClyClassHierarchy>
	parentMap:		<Dictionary<Class, SortedCollection<Class>>>
	roots:		<IdentitySet<Class>>