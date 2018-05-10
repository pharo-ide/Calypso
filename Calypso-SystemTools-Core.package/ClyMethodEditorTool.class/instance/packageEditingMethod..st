operations
packageEditingMethod: aMethod
	
	self applyChangesBy: [ 
		(extendingPackage notNil and: [aMethod package ~~ extendingPackage]) ifTrue: [
			^(SycMoveMethodsToPackageCommand for: {aMethod} to: extendingPackage) 
				execute].
	
		(extendingPackage isNil and: [ aMethod isExtension ]) ifTrue: [ 
			(SycMoveMethodsToClassPackageCommand for: {aMethod}) 
				execute]
	]