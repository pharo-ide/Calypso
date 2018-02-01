selection changes
methodGroupSelectionChanged
		
	| methodQueries |
	self methodGroupSelection isEmpty ifTrue: [ ^self showAllMethods].

	methodQueries := self methodGroupSelection actualObjects 
		collect: [ :eachGroup | eachGroup methodQuery].
	methodView 
		showQueries: methodQueries as: (ClySortedQueryResult using: ClySortMethodFunction ascending)