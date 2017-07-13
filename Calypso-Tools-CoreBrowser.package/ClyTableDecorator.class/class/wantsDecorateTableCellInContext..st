testing
wantsDecorateTableCellInContext: singleItemContext
	self isAbstract ifTrue: [ ^false ].
	(singleItemContext browser hasPluginOf: self browserPluginClass)
		ifFalse: [ ^false ].
	 
	^(singleItemContext isActivationOf: self browserContextClass)
			and: [ self wantsDecorateTableCellOf: singleItemContext lastSelectedItem]