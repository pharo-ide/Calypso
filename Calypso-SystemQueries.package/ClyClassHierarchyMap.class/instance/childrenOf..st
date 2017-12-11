accessing
childrenOf: aClass
	^parentMap at: aClass ifAbsent: [ #() ]