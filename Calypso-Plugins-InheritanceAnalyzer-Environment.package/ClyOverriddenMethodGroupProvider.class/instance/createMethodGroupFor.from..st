building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	^ClyMethodGroup named: 'overridden' priority: -10 on: aMethodQuery 