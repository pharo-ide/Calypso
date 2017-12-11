running
createBrowser
	^ ClyQueryBrowser on: environment scopes: {
			ClyBothMetaLevelClassScope of: ClyClass1FromP1 in: environment.
			ClyBothMetaLevelClassScope of: ClyClass2FromP1 in: environment}	"class with methods"