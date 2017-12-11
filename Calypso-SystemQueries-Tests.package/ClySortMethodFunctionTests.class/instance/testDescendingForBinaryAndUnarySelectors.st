tests
testDescendingForBinaryAndUnarySelectors
	"binary selector is always on top when ascending and on botton when descending"
	function := ClySortMethodFunction descend.
	
	self assert: #| > #abs. "this should not affect desired sort behaviour"	
	self deny: (function value: Integer >> #| value: Number >> #abs ).
	self assert: (function value: Number >> #abs value: Integer >> #| ).
	
	self deny: #+ > #abs. "this should not affect desired sort behaviour"	
	self deny: (function value: Number >> #+ value: Number >> #abs ).
	self assert: (function value: Number >> #abs value: Number >> #+ )