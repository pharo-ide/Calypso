building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	^ClyMethodGroup named: 'failed tests' priority: -1 on: aMethodQuery 