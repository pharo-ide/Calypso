building groups
buildMethodGroupsFor: aMethod
	extensionDetected ifTrue: [ ^self ].
	
	aMethod isExtension ifFalse: [ ^self ].
	
	extensionDetected := true