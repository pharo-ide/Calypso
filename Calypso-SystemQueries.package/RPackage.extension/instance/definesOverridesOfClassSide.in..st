*Calypso-SystemQueries
definesOverridesOfClassSide: aMethod in: classAndSelectors

	| methodClass selector |
	methodClass := aMethod origin.
	selector := aMethod selector.
	
	classAndSelectors keysAndValuesDo: [ :className :selectors |
		((selectors includes: selector) 
			and: [ (Smalltalk globals classNamed: className) classSide inheritsFrom: methodClass ])
				ifTrue: [ ^true ] ].
	^false