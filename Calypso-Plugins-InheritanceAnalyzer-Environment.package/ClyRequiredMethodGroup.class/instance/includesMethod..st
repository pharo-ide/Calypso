testing
includesMethod: aMethod

	| selector |
	selector := aMethod selector.
	
	^classes anySatisfy: [ :eachClass | 
		(self isClass: eachClass shouldImplement: selector) 
			and: [(eachClass includesSelector: selector) not]]