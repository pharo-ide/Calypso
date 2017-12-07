running
createQuery
	^ ClyClassComments
		withString: self expectedClassCommentSubstring
		from: (ClyPackageScope of: Object package in: environment)