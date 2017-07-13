building groups
addMethodGroupsTo: items
	extensionDetected ifFalse: [ ^self ].
	
	items add: (ClyExtendedMethodGroup classes: classes) asEnvironmentItem