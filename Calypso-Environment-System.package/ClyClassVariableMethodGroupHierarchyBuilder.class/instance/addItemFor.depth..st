building
addItemFor: aClass depth: hierarchyDepth
	super addItemFor: aClass instanceSide depth: hierarchyDepth.
	processedClasses add: aClass instanceSide