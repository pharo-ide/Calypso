item decoration
decorateBrowserItem: anItem ofClass: aClass

	((aClass classSide includesLocalSelector: #isDeprecated) and: [aClass isDeprecated]) 
		ifTrue: [ anItem markWith: ClyDeprecatedItemTag]