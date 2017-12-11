system changes
isAffectedByChangedMethod: aMethod
	| selector methodClass |
	selector := aMethod selector.
	methodClass := aMethod origin.
	scope classesDo: [ :each | 
		each = methodClass ifTrue: [ ^true ].		
		((methodClass inheritsFrom: each) and: [ each includesLocalSelector: selector ])
			 ifTrue: [ ^true]
	].	
	^false