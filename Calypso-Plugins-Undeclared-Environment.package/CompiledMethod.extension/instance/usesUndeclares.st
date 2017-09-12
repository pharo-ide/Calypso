*Calypso-Plugins-Undeclared-Environment
usesUndeclares
	self literalsDo: [:each | 
		(each class == Association and: [each key notNil]) ifTrue: [^true]].
	
	^false