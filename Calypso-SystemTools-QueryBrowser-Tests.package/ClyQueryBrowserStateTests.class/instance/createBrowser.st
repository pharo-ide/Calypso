running
createBrowser

	^ClyQueryBrowser 
		on: environment 
		scopes: {
			ClyBothMetaLevelClassScope of: {ClyClass1FromP1}.
			ClyBothMetaLevelClassScope of: {ClyClass2FromP1}
		}.	"class with methods"