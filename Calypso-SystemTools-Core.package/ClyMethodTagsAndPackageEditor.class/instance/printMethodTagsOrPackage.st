printing
printMethodTagsOrPackage

	^self isExtensionActive 
		ifTrue: [ ownerTool extendingPackage name]
		ifFalse: [ self printMethodTags ]