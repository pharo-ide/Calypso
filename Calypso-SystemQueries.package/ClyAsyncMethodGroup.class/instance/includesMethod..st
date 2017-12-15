testing
includesMethod: aMethod
	self asyncQueryResult isBuilt ifFalse: [ ^false ].
	^super includesMethod: aMethod