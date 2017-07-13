controlling
checkItemsOfCurrentSelection: currentSelection
	| newItems |
	isSameAsCurrent := false.
	newItems := currentSelection items.	

	newItems size = items size ifFalse: [ ^self].
	newItems do: [ :eachNewItem | items do: [ :eachMyItem |
		(eachNewItem isSameAs: eachMyItem) ifFalse: [ ^self ] ] ].

	isSameAsCurrent := true