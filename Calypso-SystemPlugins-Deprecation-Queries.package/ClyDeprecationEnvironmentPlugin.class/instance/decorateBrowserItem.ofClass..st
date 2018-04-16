item decoration
decorateBrowserItem: anItem ofClass: aClass

	((aClass respondsTo: #isDeprecated) and: [aClass isDeprecated]) 
		ifTrue: [ anItem markWith: ClyDeprecatedItemTag]