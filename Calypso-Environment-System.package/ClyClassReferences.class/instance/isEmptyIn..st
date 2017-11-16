execution
isEmptyIn: aNavigationEnvironment
	
	self ensureVariableAreActualBindingsIn: aNavigationEnvironment system.
	
	^super isEmptyIn: aNavigationEnvironment