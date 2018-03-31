controlling
restoreCurrentSelectionAfterUpdate: currentSelection
	"We should signal selection change only when previous selection was different 
	and new given data source has no same items.
	We don't want trigger changes when selection was not changed in fact
	DIFFERENCE from basic #restoreCurrentSelection::
	After update we should not switch selection to similar items.
	After update we should only try to restore exact selection as before.
	So we ask data source to find items exactly with my content
	instead of something similar"
	| wasSameAsCurrent newItems currentSelectionIsChanged |
	wasSameAsCurrent := isSameAsCurrent.
	self checkItemsOfCurrentSelection: currentSelection.
	newItems := isSameAsCurrent 
		ifTrue: [ currentSelection items]
		ifFalse: [ currentSelection rootDataSource itemsWith: self actualObjects].
		
	currentSelectionIsChanged := (wasSameAsCurrent & isSameAsCurrent) not.
	currentSelection 
		restoreDesiredSelectionWith: newItems 
		silently: currentSelectionIsChanged not.
	^currentSelectionIsChanged