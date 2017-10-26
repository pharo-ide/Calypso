queries
variablesDo: aBlock

	self classesDo: [ :eachClass | 
		eachClass classVariables associationsDo: [:var | 
			aBlock value: (ClyClassVariable on: var declaredIn: eachClass)].
		eachClass slots do: [:var | 
			aBlock value: (ClyInstanceVariable on: var declaredIn: eachClass)].
	]
