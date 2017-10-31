items resolving
prepareBrowserItem: anItem ofMethod: aMethod

	aMethod usesUndeclares ifTrue: [ 
		anItem markWith: ClyUndeclaresUserTag]