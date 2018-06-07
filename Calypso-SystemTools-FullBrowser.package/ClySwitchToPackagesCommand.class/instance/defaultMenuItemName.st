accessing
defaultMenuItemName
	^browser isScopedModeEnabled 
		ifTrue: [ 'Package scope' ]
		ifFalse: [ 'Packages' ]