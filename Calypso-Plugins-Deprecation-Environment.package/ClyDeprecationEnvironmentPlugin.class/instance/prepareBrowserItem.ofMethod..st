browser items
prepareBrowserItem: anItem ofMethod: aMethod

	aMethod isDeprecated ifTrue: [ 
		anItem markWith: ClyDeprecatedItemTag]