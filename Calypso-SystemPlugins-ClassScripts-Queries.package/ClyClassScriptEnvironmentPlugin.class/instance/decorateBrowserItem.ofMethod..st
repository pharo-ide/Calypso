item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	| script |
	
	script := ClyClassScript detectInMethod: aMethod ifAbsent: [ ^self].
	anItem addProperty: (ClyClassScriptProperty script: script)