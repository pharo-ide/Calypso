opening
browseQueryResultOf: aQuery
	| browser |
	browser := self on: ClyNavigationEnvironment currentImage.
	browser show: aQuery inScope: ClyNavigationEnvironment currentImageScope.
	^browser open