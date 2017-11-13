building groups
methodGroupsIn: aClassScope do: aBlock
	| failuresExist |
	failuresExist := false.
	aClassScope classesDo: [ :each | 
		(each isTestCase and: [each isAbstract not
			and: [ each hasFailedTest or: [ each hasErrorTest ] ]])
				ifTrue: [ failuresExist := true ]].
	failuresExist ifFalse: [^self].

	aBlock value: (ClyFailedTestGroup fromClasses: aClassScope)