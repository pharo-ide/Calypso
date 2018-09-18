controlling
updateSelectedItemsOf: aDataSource

	| actualSelectionChanged |
	self initiateUIChangeBy: [ 
		actualSelectionChanged := selection updateItemsWhichBelongsTo: aDataSource.
		highlighting updateItemsWhichBelongsTo: aDataSource.
		desiredSelection ifNotNil: [
			desiredSelection updateItemsWhichBelongsTo: aDataSource.
			actualSelectionChanged := actualSelectionChanged 
				| (desiredSelection restoreCurrentSelectionAfterUpdate: selection)].
		^actualSelectionChanged]