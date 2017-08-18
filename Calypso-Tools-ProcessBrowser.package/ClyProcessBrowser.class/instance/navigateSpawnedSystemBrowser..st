navigation
navigateSpawnedSystemBrowser: aSystemBrowser
	| context |
	self selectedContexts isEmpty ifTrue: [ ^self ].
	
	context := self createContextOfSingleItem: self selectedContexts lastSelectedItem.
	
	aSystemBrowser selectMethod: context lastSelectedMethod