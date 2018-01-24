building
update
	label color: label defaultColor.
	label contents: self printMethodTagsOrPackage.
	self isExtensionActive 
		ifTrue: [ editButton helpText: 'Choose package for method']
		ifFalse: [ editButton helpText: 'Classify method']