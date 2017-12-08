operations
tagAndPackageEditingMethod: aMethod
	self tagEditingMethod: aMethod.
	"Tagging should be performed before package movement 
	because extending package is still based on protocol begining with star. 
	So it should override manual tagging"	
	(extendingPackage notNil and: [aMethod package ~~ extendingPackage]) ifTrue: [
		^(SycMoveMethodsToPackageCommand for: {aMethod} to: extendingPackage) 
			execute].
	(extendingPackage isNil and: [ aMethod isExtension ]) ifTrue: [ 
		(SycMoveMethodsToClassPackageCommand for: {aMethod}) 
			execute]