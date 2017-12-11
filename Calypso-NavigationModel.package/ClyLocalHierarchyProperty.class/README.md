I represent how many local children exist for object from given point of view on its owner environment. 
For example if you look at classes as hierarchy then you can see Object and its subclasses. Imaging that hierarchy is built in particular package scope.
From such point of view Object class can be marked by me to keep count of "local" children. From point of view of another package this count can be different.
There are suitable methods to access this property from item:
	- localHierarchySize
	- localHierarchySize: count
I used by tools to organize tree view for list of items which provide local hierarchy by themselves. Item has no real list of children. But instead it knows count of internal tree. It allows tool hide right amount of items when given parent node needs to be collapsed. Only condition here is that property should hold count of full subtree of local hierarchy (not just first level children).
 
To manually create my instances use:
	ClyLocalHierarchyProperty size: 10

Internal Representation and Key Implementation Points.

    Instance Variables
	subtreeSize:		<Integer>