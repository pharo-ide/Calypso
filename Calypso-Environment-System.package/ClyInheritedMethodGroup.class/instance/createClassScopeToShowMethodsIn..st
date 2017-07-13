operations
createClassScopeToShowMethodsIn: currentClassScope
	"When we enable inherited method visibility we not interested in common root classes 
	like Object, ProtoObject, Class and so on"
	
	^currentClassScope withExtraBasisObjects: self meaningfullInheritedClasses