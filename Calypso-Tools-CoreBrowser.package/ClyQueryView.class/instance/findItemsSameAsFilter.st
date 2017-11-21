controlling
findItemsSameAsFilter

	| filterString |
	filterString := table filterString asLowercase.
	^self dataSource findItemsWhere:  [:each | each name asLowercase = filterString ]