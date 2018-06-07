tests
testSimpleCondition_conditionBlockProducerMethodAST
	self 
		assert:
			(ClyAddConditionalBreakpointCommand new conditionBlockProducerMethodAST: 'true')
		equals:
			(RBParser parseMethod: 'conditionBlockGenerator ^[ :ThisContext | Breakpoint checkBreakConditionValue: true ]')