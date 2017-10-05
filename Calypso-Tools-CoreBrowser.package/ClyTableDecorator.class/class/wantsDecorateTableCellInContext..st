testing
wantsDecorateTableCellInContext: singleItemContext
	(singleItemContext browser hasPluginOf: self browserPluginClass)
		ifFalse: [ ^false ].
	 
	^self wantsDecorateTableCellOf: singleItemContext lastSelectedItem