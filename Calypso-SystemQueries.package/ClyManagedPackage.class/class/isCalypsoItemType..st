testing
isCalypsoItemType: aClass
	^(super isCalypsoItemType: aClass)
		or: [ aClass = RPackage ]