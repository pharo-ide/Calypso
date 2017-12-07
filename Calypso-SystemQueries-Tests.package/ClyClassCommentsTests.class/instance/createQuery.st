running
createQuery
	^ ClyClassComments
		withString: self expectedClassCommentSubstring
		from: (ClyPackageScope ofAll: {Object package} in: environment)