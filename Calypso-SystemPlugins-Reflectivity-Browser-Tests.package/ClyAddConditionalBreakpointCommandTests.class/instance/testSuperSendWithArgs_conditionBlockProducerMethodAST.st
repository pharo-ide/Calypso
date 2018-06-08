tests
testSuperSendWithArgs_conditionBlockProducerMethodAST
	self 
		assert:
			(ClyAddConditionalBreakpointCommand new conditionBlockProducerMethodAST: 'super foo: arg1 bar: arg2')
		equals:
			(RBParser parseMethod: 'conditionBlockGenerator ^[ :ThisContext | Breakpoint checkBreakConditionValue: (ThisContext receiver perform: #foo:bar: withArguments: {ThisContext lookupSymbol: #arg1. ThisContext lookupSymbol: #arg2.} inSuperclass: ThisContext receiver class superclass)]')