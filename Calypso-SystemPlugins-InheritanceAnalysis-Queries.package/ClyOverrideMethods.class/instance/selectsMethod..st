testing
selectsMethod: aMethod
	| selector |
	selector := aMethod selector.
	aMethod origin allSuperclassesDo: [:each | 
		(each includesLocalSelector: selector)
			ifTrue: [ ^ true ]].
	^ false