testing
selectsMethod: aMethod

	^methods anySatisfy: [ :each | 
		each calypsoEnvironmentType checkCalypsoItem: each isEqualTo: aMethod]