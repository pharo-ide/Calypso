accessing
allClassesRelatedTo: aClass do: aBlock
	"Any hierarchy is defined in terms of relationship between classes 
	retrieved from meta level which are specified by local scope class
	Hierarchy analyze are continue only when following condition is true:
		(localClassScope metaLevelForHierarchyOf: each) = each
	It ensures that at next iteration we will not move out of specified local class scope bounderies  
	It is important condition for complex cases when we are analyzing metaclasses.
	For example Class allSubclasses will return almost all classes in system.
	And depending on local scope we want all of them 
	or we want only actual subclasses which was defined by users.
	So only with ClassScope as local scope we will see everything.
	But concrete meta level scopes (instance side or class side) will see you only real classes
	
	Also any hierarchy scope should ignore obsolete classes"
	| actualClass |
	actualClass := localClassScope metaLevelForHierarchyOf: aClass.
	
	self classesRelatedTo: actualClass do: [:each | 
		((localClassScope metaLevelForHierarchyOf: each) = each) ifTrue: [ 
			each isObsolete ifFalse: [ self metaLevelsOf: each do: aBlock].
			self allClassesRelatedTo: each do: aBlock]]