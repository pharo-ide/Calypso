testing
isActiveInContext: aBrowserItemContext
	^(super isActiveInContext: aBrowserItemContext)
		and: [ annotatedClass wantsDecorateTableCellInContext: aBrowserItemContext ]