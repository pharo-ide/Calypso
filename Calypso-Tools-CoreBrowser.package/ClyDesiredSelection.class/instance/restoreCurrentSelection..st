controlling
restoreCurrentSelection: currentSelection
	"We should signal selection change only when previous selection was different 
	and new given data source has no same items.
	We don't want trigger changes when selection was not changed in fact"
	| wasSameAsCurrent newItems currentSelectionIsChanged |
	wasSameAsCurrent := isSameAsCurrent.
	self checkItemsOfCurrentSelection: currentSelection.
	newItems := isSameAsCurrent 
		ifTrue: [ currentSelection items]
		ifFalse: [ currentSelection rootDataSource findItemsSimilarTo: items].
		
	currentSelectionIsChanged := (wasSameAsCurrent & isSameAsCurrent) not.
	currentSelection 
		restoreDesiredSelectionWith: newItems 
		silently: currentSelectionIsChanged not.
	^currentSelectionIsChanged