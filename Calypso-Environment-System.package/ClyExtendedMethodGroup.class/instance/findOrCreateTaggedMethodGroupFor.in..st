accessing
findOrCreateTaggedMethodGroupFor: aMethod in: existingSubgroups
	
	| tags |
	tags := aMethod tags.
	tags ifEmpty: [ 
		^existingSubgroups at: ClyNoTagMethodGroup groupName ifAbsentPut: [ ClyNoTagMethodGroup new ]].
	
	^existingSubgroups at: tags anyOne ifAbsentPut: [ ClyTaggedMethodGroup tag: tags anyOne ]