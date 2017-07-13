operations
createClassScopeToHideMethodsIn: currentClassScope
	"When we disable inherited methods visibility we want to remove all inherited classes
	(not only meaningfull)"
	
	^currentClassScope withoutBasisObjects: self inheritedClasses