*Calypso-SystemQueries
affectsMethod: aMethod
	^(super affectsMethod: aMethod) or: [oldMethod == aMethod]