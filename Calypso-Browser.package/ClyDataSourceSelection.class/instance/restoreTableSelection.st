controlling
restoreTableSelection
	| actualSelectionChanged |
	actualSelectionChanged := items anySatisfy: #isRemoved.
	
	self restoreTableSelectionSilently: actualSelectionChanged not.
	
	^actualSelectionChanged 