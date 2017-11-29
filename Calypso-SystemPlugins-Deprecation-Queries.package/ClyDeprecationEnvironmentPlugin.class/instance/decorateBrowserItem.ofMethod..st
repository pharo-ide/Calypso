item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod isDeprecated ifTrue: [ 
		anItem markWith: ClyDeprecatedItemTag]