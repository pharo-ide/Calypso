tests
testSuperSendNoArg_conditionBlockProducerMethodAST
	self 
		assert:
			(ClyAddConditionalBreakpointCommand new conditionBlockProducerMethodAST: 'super msg')
		equals:
			(RBParser parseMethod: 'conditionBlockGenerator ^[ :ThisContext | Breakpoint checkBreakConditionValue: (ThisContext receiver perform: #msg withArguments: {} inSuperclass: ThisContext receiver class superclass)]')