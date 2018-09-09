*Calypso-SystemTools-FullBrowser
browseClassNamed: aString
	
	| classToBrowse |
	classToBrowse := (self system bindingOf: aString)
		ifNil: [ self chooseClassToBrowseFrom: aString ]
		ifNotNil: [:binding | classToBrowse := binding value].
	classToBrowse ifNil: [ ^self ].
	classToBrowse isClassOrTrait ifFalse: [ classToBrowse := classToBrowse class ].
	
	self spawnBrowser: ClyFullBrowser withState: [ :browser |
		browser selectClass: classToBrowse]