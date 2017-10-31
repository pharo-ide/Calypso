items resolving
prepareBrowserItem: anItem ofMethod: aMethod

	aMethod isDeprecated ifTrue: [ 
		anItem markWith: ClyDeprecatedItemTag]