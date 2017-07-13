opening
browseMethodsFromQuery: aMethodQuery
	| browser |
	browser := self on: ClySystemNavigationEnvironment currentImage.
	browser show: aMethodQuery inScope: ClySystemNavigationEnvironment currentImageScope.
	^browser open