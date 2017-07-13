*Calypso-Environment-System
canAffectResultsOfMethodQuery: aMethodQuery

	^(aMethodQuery selectsMethod: self oldMethod) 
		or: [ aMethodQuery selectsMethod: self newMethod]