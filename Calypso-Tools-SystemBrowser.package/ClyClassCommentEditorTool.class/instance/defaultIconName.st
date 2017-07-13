initialization
defaultIconName
	^(context lastSelectedItem isMarkedWith: ClyNotCommentedClassTag)
		ifTrue: [ #uncommentedClass ]
		ifFalse: [ #commentsIcon]