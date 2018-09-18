*Calypso-SystemTools-FullBrowser
chooseClassToBrowseFrom: aClassNamePattern
	| query result |
	query := (ClyAllClasses sortedFrom: self systemScope)
		 filteredBy: (ClyItemNameFilter substringPattern: aClassNamePattern).
	result := query execute.
	result isEmpty ifTrue: [ ^nil ].
	result size = 1 ifTrue: [ ^result items first ].
	
	^[self searchDialog 
		requestSingleObject: 'Choose a class to browse...' 
		from: query] on: CmdCommandAborted do: [ nil ]