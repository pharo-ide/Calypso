selection changes
methodGroupSelectionChanged
		
	| methodQueries |
	methodGroupView changesWasInitiatedByUser ifTrue: [
		tabManager skipCurrentDesiredSelection]. "It will force selecting of method creation tab"
	
	self methodGroupSelection isEmpty ifTrue: [ ^self showAllMethods].

	methodQueries := self methodGroupSelection actualObjects 
		collect: [ :eachGroup | eachGroup methodQuery].
	methodView 
		showQueries: methodQueries as: (ClySortedQueryResult using: ClySortMethodFunction ascending)