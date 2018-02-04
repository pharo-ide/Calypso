navigation
changeStateOf: aQueryView by: aBlock
	
	| newTools |
	self changeStateBy: [
		aBlock value.
		aQueryView changesWasInitiatedByUser ifTrue: [
			newTools := OrderedCollection new.	
			tabManager buildToolsOn: newTools for: aQueryView createSelectionContext.

			tabManager desiredSelection: (newTools collect: #class)	].
	]