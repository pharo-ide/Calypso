testing
isRootNeedsProcessing: classFromRoots
	| alreadyScheduled |
	(processedClasses includes: classFromRoots) ifTrue: [ ^false ].
	
	alreadyScheduled := extractedRoots anySatisfy: [:extractedClass | 
		extractedClass == classFromRoots or: [
			self isClass: extractedClass deepParentOf: classFromRoots]].
	^alreadyScheduled not