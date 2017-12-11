testing
hasChildAt: ownerDataSourceIndex

	^ownerDataSourceIndex > self position and: [
		ownerDataSourceIndex <= (self position + self childrenCount)]