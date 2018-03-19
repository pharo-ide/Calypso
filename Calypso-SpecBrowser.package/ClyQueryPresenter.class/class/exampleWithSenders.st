examples
exampleWithSenders
	<example>
	| presenter query |
	query := ClyMessageSenders of: #do: from: ClyNavigationEnvironment currentImageScope.
	presenter := self new
		showQuery: (query withResult: (ClySortedQueryResult using: ClySortMethodFunction ascending));
		openWithSpec.
	^ presenter