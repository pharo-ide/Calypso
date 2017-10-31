items resolving
prepareBrowserItem: anItem ofMethod: aMethod

	aMethod isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ]