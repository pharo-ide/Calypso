drag and drop support
dropPassenger: aPassanger at: aDataSourceItem
	| context |
	context := browser createContextOf: aDataSourceItem asSelection.
	
	^aPassanger dropInContext: context