controlling
grabSelectionAt: rowIndex
	^(table isRowIndexSelected: rowIndex) 
		ifTrue: [itemsView selection]
		ifFalse: [  rowIndex = 0 
				ifTrue: [ ClyDataSourceSelection fromRoot: self items: #() ]
				ifFalse: [ ClyDataSourceSelection fromRoot: self items: {self elementAt: rowIndex} ]]