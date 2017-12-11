opening
openOn: aQuery
	| browser |
	browser := self on: ClyNavigationEnvironment currentImage.
	browser showResultOf: aQuery.
	^browser open