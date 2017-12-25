accessing
selectedClassDefaultMetaLevelScope
	| lastClass |
	self classSelection isEmpty ifTrue: [ ^metaLevelScope ].
	
	lastClass := self classSelection lastSelectedItem.
	^(lastClass isMarkedWith: ClyExtendedClassTag)
		ifTrue: [ "We should switch to the meta level of extended class"
			lastClass systemDefinition definingMetaLevelScope ]
		ifFalse: [ metaLevelScope ]