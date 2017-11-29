accessing
classesRelatedTo: aClass do: aBlock
	"For superclass relationship we should ask local scope 
	for hierarchy meta level where we will retrieve superclass"
	| hierarchyMetaLevel actualSuperclass visibleSuperclass |
	hierarchyMetaLevel := localClassScope metaLevelForHierarchyOf: aClass.
	hierarchyMetaLevel isRootInEnvironment ifTrue: [ ^self ].
	
	actualSuperclass := hierarchyMetaLevel superclass.
	aBlock value: actualSuperclass