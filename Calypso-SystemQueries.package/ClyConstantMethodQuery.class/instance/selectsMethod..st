testing
selectsMethod: aMethod

	^methods anySatisfy: [ :each | 
		each calypsoBrowserType checkItem: each isEqualTo: aMethod]