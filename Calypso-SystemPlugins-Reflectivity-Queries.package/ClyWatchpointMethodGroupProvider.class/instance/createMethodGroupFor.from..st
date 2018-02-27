building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	^ClyMethodGroup named: 'watchpoints' priority: 8.4 on: aMethodQuery 