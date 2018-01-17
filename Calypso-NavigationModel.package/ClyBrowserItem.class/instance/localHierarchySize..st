accessing
localHierarchySize: childrenCount
	childrenCount = 0 ifTrue: [ ^self ].
	
	self addProperty: (ClyItemLocalHierarchyProperty size: childrenCount).