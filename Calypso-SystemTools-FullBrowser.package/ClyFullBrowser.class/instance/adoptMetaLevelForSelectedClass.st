selection changes
adoptMetaLevelForSelectedClass
	| selectedClass extendedMetaLevel |
	self classSelection isEmpty ifTrue: [ ^self ].
	selectedClass := self classSelection lastSelectedItem.
	(selectedClass isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	"First we should always switch to method groups because
	only in that mode we can show properly extension methods "
	methodGroupQuery := ClyAllMethodGroups sortedFrom: self classScopeForMethods.
	extendedMetaLevel := selectedClass systemDefinition definingMetaLevelScope.
	extendedMetaLevel = metaLevelScope ifTrue: [ ^self].
	
	"We should switch to the meta level of extended class"
	metaLevelScope := extendedMetaLevel.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope