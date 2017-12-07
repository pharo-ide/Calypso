running
createQuery
	^ ClyConstantQuery
		returning: #(item1 item2)
		from: (ClyScopeExample ofAll: #() in: environment)