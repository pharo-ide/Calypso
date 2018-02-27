item decoration
doesNodeOf: aMetalinkManager belongsTo: aMethod

	| methodNode |
	methodNode := aMetalinkManager node methodNode.
	methodNode selector == aMethod selector ifFalse: [ ^false ].
	methodNode methodClass == aMethod methodClass ifFalse: [ ^false ].
	aMetalinkManager node == aMethod ast ifFalse: [ ^false ].
	
	^true