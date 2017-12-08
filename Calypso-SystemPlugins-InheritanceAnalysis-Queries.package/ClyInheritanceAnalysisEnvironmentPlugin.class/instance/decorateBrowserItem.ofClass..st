item decoration
decorateBrowserItem: anItem ofClass: aClass

	aClass hasAbstractMethods ifTrue: [ 
		anItem markWith: ClyAbstractItemTag ]