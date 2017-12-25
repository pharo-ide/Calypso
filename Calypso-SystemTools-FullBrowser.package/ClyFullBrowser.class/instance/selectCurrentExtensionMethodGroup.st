navigation
selectCurrentExtensionMethodGroup
	
	self classSelection isEmpty ifTrue: [ ^self ].
	self classSelection isMultipleSelected ifTrue: [ ^self ].
	
	(self classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) 
		ifFalse: [ ^self].
		
	self selectMethodGroupNamed: self packageSelection lastSelectedItem name