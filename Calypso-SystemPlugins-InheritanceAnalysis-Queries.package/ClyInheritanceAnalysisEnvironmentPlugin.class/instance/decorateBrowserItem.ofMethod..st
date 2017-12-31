item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ].
	aMethod isOverriding ifTrue: [ anItem markWith: ClyOverridingMethodTag ].
	aMethod isOverridden ifTrue: [ anItem markWith: ClyOverriddenMethodTag ]