*Calypso-Environment-System
canAffectResultOfMethodQuery: aMethodQuery

	^(aMethodQuery isAffectedByChangedMethod: self oldMethod) 
		or: [ aMethodQuery isAffectedByChangedMethod: self newMethod]