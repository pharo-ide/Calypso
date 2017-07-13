testing
isClass: aClass1 deepParentOf: aClass2
	self hierarchyPairsOf: aClass1 do: [:parent :child | 
		aClass2 == child ifTrue: [ ^true ]].
	^false