item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	| script |
	aMethod origin isClassSide ifFalse: [ ^self ].
	aMethod numArgs > 0 ifTrue: [ ^self ].
	
	script := ClyClassScript detectInMethod: aMethod ifAbsent: [ ^self].
	anItem addProperty: (ClyClassScriptProperty script: script)