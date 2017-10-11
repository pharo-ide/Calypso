drag and drop support
wantsDropPassenger: aPassenger at: aDataSourceItem
	| context |
	context := self createSelectionContextOf: aDataSourceItem asSelection.
	
	^aPassenger canBeDroppedInContext: context