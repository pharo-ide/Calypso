item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod origin isTrait ifTrue: [ 
		anItem systemDefinition definingClassItem markWith: ClyTraitTag ]