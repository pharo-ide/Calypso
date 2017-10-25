building
buildFromClasses: classes
	| item |
	classes do: [ :each | 
		item := ClyFormattedResultItem named: each name with: each.
		items add: item]