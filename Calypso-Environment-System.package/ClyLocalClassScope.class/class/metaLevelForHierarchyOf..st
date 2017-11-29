meta level
metaLevelForHierarchyOf: aClass
	"Subclasses should decide what meta level of given class
	should be used to retrieve/build hierarchy.
	For example superclass hierarchy of ProtoObject class 
	can stop at it according to instance side hierarchy 
		ProtoObject superclass >>> nil
	Or it can follow full superclass chain which will ends at Object and ProtoObject
		ProtoObject class superclass >>> Class
	This method adds such decision to concrete kind of local scope
	which allows to use scopes to restrict visibility of class hierarchy"
	self subclassResponsibility 