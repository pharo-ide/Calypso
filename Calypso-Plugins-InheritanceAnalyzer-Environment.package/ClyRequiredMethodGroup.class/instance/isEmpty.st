testing
isEmpty
	^(classes anySatisfy: [ :eachClass |
		self isClassHasToBeImplemented: eachClass]) not