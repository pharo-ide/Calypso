building
buildChildrenItemsFor: aClass depth: childrenDepth
	
	self classesRelatedTo: aClass do: [ :eachChild |		
		self buildChildItem: eachChild depth: childrenDepth ]