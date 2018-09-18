accessing
mainColumn
	^table columns detect: [:each | each isKindOf: ClyMainTableColumn]