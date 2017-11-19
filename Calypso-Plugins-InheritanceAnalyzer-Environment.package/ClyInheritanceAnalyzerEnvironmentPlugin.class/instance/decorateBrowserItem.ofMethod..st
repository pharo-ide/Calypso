item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ]