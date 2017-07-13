building
buildHierarchicalItems
	| class |
	self buildClassParentsMap.
	self buildRootItems.
	
	[extractedRoots notEmpty] whileTrue: [ 
		class := extractedRoots removeFirst.
		self buildHierarchicalItemsFor: class depth: depth]