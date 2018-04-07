accessing
childrenLike: aChildrenClass 
	^self children 
		detect: [ :each | each class = aChildrenClass ]
		ifNone: [ aChildrenClass new ]