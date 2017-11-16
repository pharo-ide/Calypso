execution
isEmptyIn: aNavigationEnvironment

	scope classesDo: [ :each | 
		(each isTestCase and: [each isAbstract not
			and: [ each hasFailedTest or: [ each hasErrorTest ] ]])
				ifTrue: [ ^false ]].
	^true