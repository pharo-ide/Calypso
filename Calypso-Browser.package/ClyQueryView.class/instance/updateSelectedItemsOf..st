controlling
updateSelectedItemsOf: aDataSource

	| actualSelectionChanged |
	self initiateUIChangeBy: [ 
		actualSelectionChanged := selection updateItemsWhichBelongsTo: aDataSource.
		highlighting updateItemsWhichBelongsTo: aDataSource.
		desiredSelection ifNotNil: [
			actualSelectionChanged := actualSelectionChanged 
				| (desiredSelection restoreCurrentSelection: selection)].
		^actualSelectionChanged]