running
createQuery
	^ClyClassCommentQuery 
		withString: self expectedClassCommentSubstring
		from: (ClyPackageScope of: {Object package} in: environment)