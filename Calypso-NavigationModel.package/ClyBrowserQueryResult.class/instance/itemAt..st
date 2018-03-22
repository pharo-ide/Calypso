queries
itemAt: index

	^(super itemAt: index)
		prepareIn: environment;
		yourself