accessing spotter
spotterForPackageCommandsFor: aStep
	<spotterOrder: 20>

	self 
		commandListProcessor: 'Package' 
		selector: #packageView 
		step: aStep