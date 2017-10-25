tests
testDescending

	function := ClySortItemGroupFunction descend.
 
	self assert: (function value: ClyInheritedMethodGroup new value: (ClyTaggedMethodGroup tag: #some) ).
	self deny: (function value: (ClyTaggedMethodGroup tag: #some) value: ClyInheritedMethodGroup new).
	self assert: (function value: ClyInheritedMethodGroup new value: ClyInheritedMethodGroup new).
	
	self assert: (function 
		value: (ClyTaggedMethodGroup tag: #some2) value: (ClyTaggedMethodGroup tag: #some1) ).
	self deny: (function 
		value: (ClyTaggedMethodGroup tag: #some1) value: (ClyTaggedMethodGroup tag: #some2) ).
