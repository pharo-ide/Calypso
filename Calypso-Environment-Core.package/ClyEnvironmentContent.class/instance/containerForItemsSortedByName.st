initialization
containerForItemsSortedByName
	^SortedCollection sortBlock:  [ :a :b | a name < b name ]