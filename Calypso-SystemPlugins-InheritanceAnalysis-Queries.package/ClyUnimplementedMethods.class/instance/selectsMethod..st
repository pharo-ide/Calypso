testing
selectsMethod: aMethod

	| selector |
	selector := aMethod selector.
	
	scope classesDo: [:eachClass | 
		((self isClass: eachClass shouldImplement: selector) 
			and: [(eachClass includesSelector: selector) not])
				ifTrue: [ ^true ]].
	^false