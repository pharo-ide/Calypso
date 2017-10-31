browser items
prepareBrowserItem: anItem ofClass: aClass

	aClass hasAbstractMethods ifTrue: [ 
		anItem markWith: ClyAbstractItemTag ]