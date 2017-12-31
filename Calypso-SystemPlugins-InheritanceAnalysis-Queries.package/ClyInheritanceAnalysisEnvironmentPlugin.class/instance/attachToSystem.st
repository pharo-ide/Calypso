controlling
attachToSystem
	super attachToSystem.
	
	environment system when: MethodAdded, MethodRemoved send: #processMethodChange: to: self