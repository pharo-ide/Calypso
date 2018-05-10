testing
belongsToCurrentBrowserContext

	| packageSelection |
	packageSelection := browser packageSelection.
	package ifNil: [ ^packageSelection isEmpty].
	packageSelection isEmpty ifTrue: [ ^true ].
	
	^packageSelection includesActualObject: package