examples
exampleWithSenders
	<example>
	| presenter |
	presenter := self new
		showQuery: (ClyMessageSenders of: #do: from: ClyNavigationEnvironment currentImageScope);
		openWithSpec.
	^ presenter