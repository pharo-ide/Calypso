accessing
selectedClassMetaLevelScope
	self classSelection isEmpty ifTrue: [ ^metaLevelScope ].
	^self classSelection lastSelectedItem systemDefinition definingMetaLevelScope 