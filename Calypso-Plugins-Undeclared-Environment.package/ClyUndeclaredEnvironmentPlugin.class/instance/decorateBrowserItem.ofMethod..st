item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod usesUndeclares ifTrue: [ 
		anItem markWith: ClyUndeclaresUserTag]