accessing
defaultMenuItemName
	^browser isScopedModeEnabled 
		ifTrue: [ 'Scoped pckg' ]
		ifFalse: [ 'Packages' ]