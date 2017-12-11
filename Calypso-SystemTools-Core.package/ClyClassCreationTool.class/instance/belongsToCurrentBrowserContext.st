testing
belongsToCurrentBrowserContext

	| packageSelection |
	packageSelection := browser packageView selection.
	package ifNil: [ ^packageSelection isEmpty].
	packageSelection isEmpty ifTrue: [ ^true ].
	
	^packageSelection lastSelectedItem actualObject == package