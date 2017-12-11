meta level
metaLevelForHierarchyOf: aClass
	"My subclasses should restrict any hierarchy by instance side relationship.
	For example using class side scope you can analyze hierarchy of ProtoObject. 
	It will gives you only ProtoObject class despite of
	ProtoObject class superclass is not nil"
	^aClass instanceSide 