item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ].
	aMethod isOverride ifTrue: [ anItem markWith: ClyOverrideTag ].
	aMethod isOverridden ifTrue: [ anItem markWith: ClyOverriddenTag ]