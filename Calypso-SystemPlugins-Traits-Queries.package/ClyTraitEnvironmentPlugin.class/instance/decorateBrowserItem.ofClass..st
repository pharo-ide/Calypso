item decoration
decorateBrowserItem: anItem ofClass: aClass

	aClass isTrait ifTrue: [ anItem markWith: ClyTraitTag ].
	aClass traits ifNotEmpty: [ anItem markWith: ClyTraitUserTag ]