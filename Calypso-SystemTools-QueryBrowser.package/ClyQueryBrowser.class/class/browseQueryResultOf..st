opening
browseQueryResultOf: aMethodQuery
	| browser |
	browser := self on: ClyNavigationEnvironment currentImage.
	browser show: aMethodQuery inScope: ClyNavigationEnvironment currentImageScope.
	^browser open