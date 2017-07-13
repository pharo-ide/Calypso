building
buildChildrenItemsFor: aClass depth: hierarchyDepth

	| traits |		
	traits := self buildTraitItemsFor: {aClass} depth: hierarchyDepth.	
		
	super buildChildrenItemsFor: aClass depth: hierarchyDepth.		
	
	processedClasses removeAll: traits