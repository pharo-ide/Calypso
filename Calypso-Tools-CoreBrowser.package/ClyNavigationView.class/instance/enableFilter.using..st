controlling
enableFilter: anItemStringFilterClass using: aStringPattern

	table 
		enableFilter: (ClyTableFilterFactory of: anItemStringFilterClass using: aStringPattern); 
		explicitFunction