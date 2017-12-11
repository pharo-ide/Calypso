drag and drop support
dropPassenger: aPassanger at: aDataSourceItem
	| context |
	context := self createSelectionContextOf: aDataSourceItem asSelection.
	
	^aPassanger dropInContext: context