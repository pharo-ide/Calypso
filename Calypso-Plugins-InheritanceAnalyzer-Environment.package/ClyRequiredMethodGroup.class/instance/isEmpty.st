testing
isEmpty
	^(classScope anySatisfy: [ :eachClass |
		self isClassHasToBeImplemented: eachClass]) not