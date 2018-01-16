I wrap query items and extend them with information required for the browser:
- name of item
- position inside actual result items
- depth inside result hierarchy (if hierarchycal result was built)
- properties about actual item

For example you can query classes from system. The result can be sorted by name. Or classes can be arranged in subclass hierarchy. 
In first case I will represent particular class with one position and zero depth. But in another case position of same class will be different and depth could be not zero.
	
Properties are represented by first class objects: subclasses of ClyBrowserItemProperty. To add and access them use following messages:
	- addProperty: aProperty
	- getProperty: aPropertyClass
	- getProperty: aPropertyClass ifAbsent: aBlock
	- hasProperty: aPropertyClass

There are special kind of properties for specific purpose:

There is hierarchy of item tags represented by subclasses of ClyEnvironmentItemSimpleTag. They allow mark object with specific tag. For example there is ClyAbstractClassTag which is used to mark abstract classes.
You can use following methods to manage tags:
	- markWith: aSimpleTagClass
	- isMarkedWith: aPropertyClass. It is analogue of #hasProperty:

There is special property ClyChildrenTag to mark object that it includes particilar kind of children. Kind of children is represented by class of environment scope which children arrange.
For example you can mark class with methods:
	classItem markWithChildrenOf: ClyMethodScope.
To check that object has particular children use:
	classItem hasChildrenOf: ClyMethodScope

Another special kind of property is ClyLocalHierarchyProperty. It represents how many local children exist from given point of view on owner environment. 
For example if you look at classes as hierarchy then you can see Object and its subclasses. This hierarchy can be limited by package scope.
From such point of view Object class can be marked with this special property to keep count of "local" children. From point of view of another package this count can be different.
There is suitable method to access this property:
	- localHierarchySize
	- localHierarchySize: count
ClyLocalHierarchyProperty is used by tools to organize tree view for list of items which provide local hierarchy by themselves. Item has no real list of children. But instead it knows count of internal tree. It allows tool hide right amount of items when given parent node needs to be collapsed. Only condition here is that property should hold count of full subtree of local hierarchy (not just first level children).

Another useful property is ClyEnvironmentItemTypeProperty. It keeps class of object. You can of course ask class directly from object. But for example with remote scenario it could be suitable to keep class closer to item and not communicate with underlying remote object for this. To access property use:
	- type
	- type:

Clients create my instances and fill them with desired set of properties. They can decide that filled properties are complete and mark me as resolved. They can use this flag to compute properties lazely and once. I provide set of methods to manage this state:
	- isResolved 
	- isResolved: aBool
	- beResolved

To create my instances use:

	ClyEnvironmentItem named: aString with: anObject

I am not supposed to be subclassed.

Internal Representation and Key Implementation Points.

    Instance Variables
	actualObject:		<Object>
	depth:		<Number>
	isResolved:		<Boolean>
	name:		<String>
	position:		<Number>
	properties:		<Collection of<ClyEnvironmentItemProperty>>