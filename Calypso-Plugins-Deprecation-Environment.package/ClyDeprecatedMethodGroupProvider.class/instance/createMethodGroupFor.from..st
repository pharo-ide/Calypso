building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	^ClyMethodGroup named: 'deprecated' priority: -9 on: aMethodQuery 