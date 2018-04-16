event handling
selectionChanged
	"This method is called by two reasons:
		- user selects the item
		- user typed the filter (table is reset selection in current Fast table logic)
	The isFilterChanged condition handle last case 
	when we want to keep selection on filtered data source if it exists.
	The main complexity is how and when update desired selection instance
	which is performed by #updateSelectionForNewFilter and #updateSelection methods"
	| selectionIsChanged |
	selectionIsChanged := true.
	self changeStateBy: [		
		self isFilterChanged ifTrue: [ 
			selectionIsChanged := self updateSelectionForNewFilter.
			selectionIsChanged ifFalse: [ ^self ] "No selection change happens"].		
		selectionIsChanged ifTrue: [ self updateSelection].
		navigationSelector ifNotNil: [
			browser 
				perform: navigationSelector 
				withEnoughArguments: {self selection}].
	].
	self triggerClickCommands