building
buildChildrenItemsFor: aClass depth: childrenDepth
	
	self childrenOf: aClass do: [ :eachChild |		
		self buildChildItem: eachChild depth: childrenDepth ]