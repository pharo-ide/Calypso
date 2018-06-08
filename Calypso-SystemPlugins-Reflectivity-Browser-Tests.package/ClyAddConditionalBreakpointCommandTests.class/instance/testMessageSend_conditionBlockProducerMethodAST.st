tests
testMessageSend_conditionBlockProducerMethodAST
	self 
		assert:
			(ClyAddConditionalBreakpointCommand new conditionBlockProducerMethodAST:  'val msg: arg')
		equals:
			(RBParser parseMethod: 'conditionBlockGenerator ^[ :ThisContext | Breakpoint checkBreakConditionValue: ((ThisContext lookupSymbol: #val) msg: (ThisContext lookupSymbol: #arg))]')