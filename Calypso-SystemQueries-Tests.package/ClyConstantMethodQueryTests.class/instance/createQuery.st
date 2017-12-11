running
createQuery
	^ (ClyConstantMethodQuery
		with: {self class >> #method1. self class >> #method2})
			scope: (ClyScopeExample emptyIn: environment)