item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ].
	
	(self isMethodOverriding: aMethod) ifTrue: [ 
		anItem markWith: ClyOverridingMethodTag ].
	(self isMethodOverridden: aMethod) ifTrue: [ 
		anItem markWith: ClyOverriddenMethodTag ]