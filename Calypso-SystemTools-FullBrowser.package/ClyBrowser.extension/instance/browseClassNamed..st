*Calypso-SystemTools-FullBrowser
browseClassNamed: aString
	
	| classBinding |
	classBinding := self system bindingOf: aString.
	classBinding ifNil: [ ^self ].
	
	self spawnBrowser: ClyFullBrowser withState: [ :browser |
		browser selectClass: classBinding value]