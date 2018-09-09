accessing
grabSelectionAt: rowIndex
	| selectedItems |
	(table isRowIndexSelected: rowIndex) ifTrue: [^self selection].
	
	selectedItems := rowIndex = 0 
		ifTrue: [ #() ] ifFalse: [{self itemAt: rowIndex}].
		
	^self newSelectionWith: selectedItems.