building
buildRootItems
	
	rootClasses do: [ :eachRoot | 
		(self isRootNeedsProcessing: eachRoot) 
			ifTrue: [self buildChildrenItemsFor: eachRoot depth: depth]].
