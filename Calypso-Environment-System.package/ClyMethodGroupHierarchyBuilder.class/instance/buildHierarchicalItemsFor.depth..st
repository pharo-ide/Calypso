building
buildHierarchicalItemsFor: aClass depth: hierarchyDepth
	
	(processedClasses includes: aClass) ifTrue: [ ^self ].
		
	self addItemFor: aClass depth: hierarchyDepth.	
	self buildChildrenItemsFor: aClass depth: hierarchyDepth + 1.
	
	processedClasses add: aClass