accessing
selection
	"following logic fixes the case when filter is applied on table without selected items.
	In that case selectionChanged is not triggered and existing selection is not updated.
	It continue points to the old data source from the last selection update"
	self isFilterChanged ifTrue: [ 
		self initiateUIChangeBy: [self updateSelection] ].
	selection updateIfDirty.
	
	^selection