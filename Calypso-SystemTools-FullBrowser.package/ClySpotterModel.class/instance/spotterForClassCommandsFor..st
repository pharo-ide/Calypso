accessing spotter
spotterForClassCommandsFor: aStep
	<spotterOrder: 30>

	self 
		commandListProcessor: 'Class' 
		selector: #classView 
		step: aStep