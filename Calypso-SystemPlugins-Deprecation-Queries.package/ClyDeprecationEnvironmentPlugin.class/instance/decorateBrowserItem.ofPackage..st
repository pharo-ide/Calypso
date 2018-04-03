item decoration
decorateBrowserItem: anItem ofPackage: aPackage

	((aPackage respondsTo: #isDeprecated) and: [aPackage isDeprecated]) 
		ifTrue: [ anItem markWith: ClyDeprecatedItemTag]