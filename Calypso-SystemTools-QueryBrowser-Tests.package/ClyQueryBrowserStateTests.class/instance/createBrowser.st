running
createBrowser

	^ClyQueryBrowser 
		on: environment 
		scopes: {
			ClyLocalClassScope of: {ClyClass1FromP1}.
			ClyLocalClassScope of: {ClyClass2FromP1}
		}.	"class with methods"