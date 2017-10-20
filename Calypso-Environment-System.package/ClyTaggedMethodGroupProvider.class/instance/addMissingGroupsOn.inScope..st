building groups
addMissingGroupsOn: methodGroups inScope: aClassScope
	| allClasses |
	allClasses := aClassScope collectAllClasses.
	allClasses do: [ :each | each tagsForMethods do: [ :eachTag |	
		methodGroups at: eachTag ifAbsentPut: [ClyTaggedMethodGroup classes: allClasses tag: eachTag]	
	] ].

	methodGroups at: ClyNoTagMethodGroup groupName ifPresent: [ :existing | 
		methodGroups 
			at: ClyNoTagMethodGroup groupName 
			put: (ClyNoTagMethodGroup classes: existing classes)]