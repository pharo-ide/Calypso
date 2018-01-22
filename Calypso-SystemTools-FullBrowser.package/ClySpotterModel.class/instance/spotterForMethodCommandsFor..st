accessing spotter
spotterForMethodCommandsFor: aStep
	<spotterOrder: 50>

	self 
		commandListProcessor: 'Method' 
		selector: #methodView 
		step: aStep