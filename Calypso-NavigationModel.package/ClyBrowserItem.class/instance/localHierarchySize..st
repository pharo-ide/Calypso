accessing
localHierarchySize: childrenCount
	childrenCount = 0 ifTrue: [ ^self ].
	
	self addProperty: (ClyLocalHierarchyProperty size: childrenCount).