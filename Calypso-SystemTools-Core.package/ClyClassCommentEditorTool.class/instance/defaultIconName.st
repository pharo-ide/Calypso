initialization
defaultIconName
	^(context lastSelectedItem isMarkedWith: ClyNoCommentTag)
		ifTrue: [ #uncommentedClass ]
		ifFalse: [ #commentsIcon]