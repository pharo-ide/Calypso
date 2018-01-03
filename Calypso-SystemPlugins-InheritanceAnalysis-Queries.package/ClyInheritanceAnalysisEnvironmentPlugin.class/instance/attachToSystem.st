controlling
attachToSystem
	super attachToSystem.
	
	environment system when: MethodAdded, MethodRemoved send: #processMethodChange: to: self.
	environment system when: ClassRemoved send: #processClassRemoval: to: self.
	environment system when: ClassModifiedClassDefinition send: #processClassDefinitionChange: to: self.
	environment system when: ClassModificationApplied send: #processFullClassChange: to: self.