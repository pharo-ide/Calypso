testing
selectsMethod: aMethod

	^methods anySatisfy: [ :each | each isEqualToCalypsoItem: aMethod]