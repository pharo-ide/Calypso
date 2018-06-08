tests
testVariableNamedThisContext_conditionBlockProducerMethodAST
	self 
		assert:
			(ClyAddConditionalBreakpointCommand new conditionBlockProducerMethodAST: 'ThisContext')
		equals:
			(RBParser parseMethod: 'conditionBlockGenerator ^[ :ThisContext | Breakpoint checkBreakConditionValue: (ThisContext lookupSymbol: #ThisContext)]')