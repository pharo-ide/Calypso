building
buildRootItems
		
	rootClasses do: [ :eachRoot | 
		(self isRootNeedsProcessing: eachRoot) 
			ifTrue: [self buildHierarchicalItemsFor: eachRoot depth: depth]].
