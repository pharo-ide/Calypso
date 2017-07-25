testing
selectsMethod: aMethod

	^methods anySatisfy: [ :each | 
		ClyMethodScope checkBasisObject: each isEqualTo: aMethod]