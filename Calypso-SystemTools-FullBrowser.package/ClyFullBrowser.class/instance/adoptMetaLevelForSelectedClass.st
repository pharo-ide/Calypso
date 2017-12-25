accessing
adoptMetaLevelForSelectedClass
	| lastClass extendedMetaLevel |
	self classSelection isEmpty ifTrue: [ ^self ].
	lastClass := self classSelection lastSelectedItem.
	
	extendedMetaLevel := lastClass systemDefinition definingMetaLevelScope.
	extendedMetaLevel = metaLevelScope ifTrue: [ ^self].
	
	"We should switch to the meta level of extended class"
	metaLevelScope := extendedMetaLevel.
	methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope