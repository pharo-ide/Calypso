drag and drop support
wantsDropPassenger: aPassenger at: aDataSourceItem
	| context |
	context := browser createContextOf: aDataSourceItem asSelection.
	
	^aPassenger canBeDroppedInContext: context