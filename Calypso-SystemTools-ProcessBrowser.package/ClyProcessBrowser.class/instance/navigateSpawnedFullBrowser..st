navigation
navigateSpawnedFullBrowser: aFullBrowser
	| context |
	self contextSelection isEmpty ifTrue: [ ^self ].
	
	context := self createContextOfSingleItem: self contextSelection lastSelectedItem.
	
	aFullBrowser selectMethod: context lastSelectedMethod