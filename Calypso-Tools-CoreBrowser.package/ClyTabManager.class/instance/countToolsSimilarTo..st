accessing
countToolsSimilarTo: aBrowserTool

	^tools count: [ :each | each class = aBrowserTool class ]