accessing
classesRelatedTo: aClass do: aBlock
	"Following logic can be simple 
		aClass subclassesDo: aBlock.
	But there is complex case when we are analyzing metaclass subclasses.
	For example Class allSubclasses will return almost all classes in system.
	And depending on local scope we want all of them 
	or we want only actual subclasses which was defined by users.
	So only with concrete ClassScope local scope your will see everything.
	And meta level scopes will show you only real classes"
	| hierarchyMetaLevel |
	(localClassScope metaLevelForHierarchyOf: aClass) subclassesDo: [:each | 
		hierarchyMetaLevel := localClassScope metaLevelForHierarchyOf: each.
		hierarchyMetaLevel = each ifTrue: [ aBlock value: each]]