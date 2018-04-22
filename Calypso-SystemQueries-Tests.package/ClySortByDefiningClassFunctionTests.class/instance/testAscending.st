tests
testAscending

	function := ClySortByDefiningClassFunction ascending.
	
	self deny: (function value: (ClyClassCommentItem of: Object) value: (ClyClassCommentItem of: Array)).
	self assert: (function value: (ClyClassCommentItem of: Array) value: (ClyClassCommentItem of: Object)).
	self assert: (function value: (ClyClassCommentItem of: Object) value: (ClyClassCommentItem of: Object))