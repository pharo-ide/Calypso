*Calypso-SystemTools-FullBrowser
browseClassNamed: aString
	
	| classBinding classToBrowse |
	classBinding := self system bindingOf: aString.
	classBinding ifNil: [ ^self ].
	classToBrowse := classBinding value.
	classToBrowse isClassOrTrait ifFalse: [ classToBrowse := classToBrowse class ].
	
	self spawnBrowser: ClyFullBrowser withState: [ :browser |
		browser selectClass: classToBrowse]