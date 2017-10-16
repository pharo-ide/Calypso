*Calypso-Environment-System
canAffectResultOfMethodQuery: aMethodQuery

	^(aMethodQuery selectsMethod: self oldMethod) 
		or: [ aMethodQuery selectsMethod: self newMethod]