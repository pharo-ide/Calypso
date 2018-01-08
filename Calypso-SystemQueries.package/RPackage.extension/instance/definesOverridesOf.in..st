*Calypso-SystemQueries
definesOverridesOf: aMethod in: classAndSelectors

	| methodClass selector |
	methodClass := aMethod origin.
	selector := aMethod selector.
	
	classAndSelectors keysAndValuesDo: [ :className :selectors |
		((selectors includes: selector) 
			and: [ (Smalltalk globals classNamed: className) inheritsFrom: methodClass ])
				ifTrue: [ ^true ] ].
	^false