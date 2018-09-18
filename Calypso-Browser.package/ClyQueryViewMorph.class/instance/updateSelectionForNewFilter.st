event handling
updateSelectionForNewFilter
	"This method is supposed to update selection instance for new filtered data source.
	And it tries to recover previously selected items using desired selection.
	At the end method returns the anwer: does selection really changed
	which is true when filtered data source does not include selected items"
	| oldSelection |
	oldSelection := selection.
	
	self initiateUIChangeBy: [ 
		self updateSelection.
		(desiredSelection notNil and: [ desiredSelection isEmpty not ]) ifTrue: [
			"We should never restore empty selection when filter was changed"
			desiredSelection restoreCurrentSelection: selection]].
	
	^(selection isSameAs: oldSelection) not