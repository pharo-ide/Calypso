tests
testthisContext_conditionBlockProducerMethodAST
	self 
		assert:
			(ClyAddConditionalBreakpointCommand new conditionBlockProducerMethodAST: 'thisContext')
		equals:
			(RBParser parseMethod: 'conditionBlockGenerator ^[ :ThisContext | Breakpoint checkBreakConditionValue: ThisContext ]')