selection changes
adoptMetaLevelForSelectedClass
	| selectedClass extendedMetaLevel |
	self classSelection isEmpty ifTrue: [ ^self ].
	selectedClass := self classSelection lastSelectedItem.
	(selectedClass isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	extendedMetaLevel := selectedClass systemDefinition definingMetaLevelScope.
	extendedMetaLevel = metaLevelScope ifTrue: [ ^self].
	
	"We should switch to the meta level of extended class"
	metaLevelScope := extendedMetaLevel.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope