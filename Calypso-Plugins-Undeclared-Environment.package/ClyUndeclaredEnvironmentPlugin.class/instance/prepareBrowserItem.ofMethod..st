browser items
prepareBrowserItem: anItem ofMethod: aMethod

	aMethod usesUndeclares ifTrue: [ 
		anItem markWith: ClyUndeclaresUserTag]