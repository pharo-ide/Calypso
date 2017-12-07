running
createBrowser
	^ ClyQueryBrowser
		on: environment
		scopes:
			{(ClyBothMetaLevelClassScope ofAll: {ClyClass1FromP1} in: environment).
			(ClyBothMetaLevelClassScope
				ofAll: {ClyClass2FromP1}
				in: environment)}	"class with methods"