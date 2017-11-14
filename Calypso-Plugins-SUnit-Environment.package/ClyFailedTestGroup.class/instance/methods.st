accessing
methods

	^classScope flatCollect: [ :each | 
		(each history at: #failures), (each history at: #errors) 
			collect: [ :testSelector | each lookupSelector: testSelector ]
			thenSelect: [:method | method notNil]]