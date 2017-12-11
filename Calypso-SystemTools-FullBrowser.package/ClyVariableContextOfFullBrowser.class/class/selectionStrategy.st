selection strategy
selectionStrategy
	<classAnnotation>
	
	^(ClyContextSelectionStrategy for: ClyFullBrowser selectionType: ClyVariableMethodGroup)
		priority: 1000 "variable context should be with more priority than basic method group context"