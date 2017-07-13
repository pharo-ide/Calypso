*Calypso-Environment-System
affectsResultsOfMethodQuery: aMethodQuery

	^(aMethodQuery selectsMethod: self oldMethod) 
		or: [ aMethodQuery selectsMethod: self newMethod]