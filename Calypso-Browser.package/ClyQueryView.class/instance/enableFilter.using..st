controlling
enableFilter: anItemStringFilterClass using: aStringPattern

	self enableFilterWithFactory: (ClyTableFilterFactory of: anItemStringFilterClass using: aStringPattern)