controlling
findItemsSameAsFilter

	| filterString |
	filterString := table filterString asLowercase.
	^self dataSource findItemsWhich:  [:each | each name asLowercase = filterString ]