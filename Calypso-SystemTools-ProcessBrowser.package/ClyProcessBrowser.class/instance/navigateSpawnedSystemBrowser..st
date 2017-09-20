navigation
navigateSpawnedSystemBrowser: aSystemBrowser
	| context |
	self contextSelection isEmpty ifTrue: [ ^self ].
	
	context := self createContextOfSingleItem: self contextSelection lastSelectedItem.
	
	aSystemBrowser selectMethod: context lastSelectedMethod