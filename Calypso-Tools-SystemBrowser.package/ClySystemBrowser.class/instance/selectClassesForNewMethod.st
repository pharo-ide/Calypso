accessing
selectClassesForNewMethod

	^self selectedClasses actualObjects collect: [ :each | 
		metaLevelScope resolveClass: each]