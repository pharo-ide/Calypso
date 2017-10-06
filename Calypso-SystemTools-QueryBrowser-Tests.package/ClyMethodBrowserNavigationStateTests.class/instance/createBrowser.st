running
createBrowser

	^ClyQueryBrowser 
		on: environment 
		scopes: {
			ClyLocalClassScope basis: {ClyClass1FromP1}.
			ClyLocalClassScope basis: {ClyClass2FromP1}
		}.	"class with methods"