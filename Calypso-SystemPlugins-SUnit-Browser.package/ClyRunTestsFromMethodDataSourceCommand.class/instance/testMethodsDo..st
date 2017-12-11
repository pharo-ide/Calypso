execution
testMethodsDo: aBlock

	methodDataSource queryResult rawItemsDo: [ :eachMethod | 
		(eachMethod isTestMethod and: [ eachMethod origin isAbstract not]) 
			ifTrue: [ aBlock value: eachMethod]]