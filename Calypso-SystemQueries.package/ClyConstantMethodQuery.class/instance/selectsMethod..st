testing
selectsMethod: aMethod

	^methods anySatisfy: [ :each | 
		each calypsoBrowserType checkCalypsoItem: each isEqualTo: aMethod]