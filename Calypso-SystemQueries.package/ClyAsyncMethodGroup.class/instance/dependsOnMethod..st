testing
dependsOnMethod: aMethod

	"If query result are not built yet we are depending on any possible method.
	And when result is done we can check actual dependency"
	self asyncQueryResult isBuilt ifFalse: [ ^true ].
	
	^super dependsOnMethod: aMethod