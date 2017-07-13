testing
belongsToCurrentBrowserContext

	| packageSelection |
	packageSelection := browser packageView selection.
	classGroup ifNil: [ ^packageSelection isEmpty].
	packageSelection isEmpty ifTrue: [ ^true ].
	
	^packageSelection lastSelectedItem actualObject == classGroup