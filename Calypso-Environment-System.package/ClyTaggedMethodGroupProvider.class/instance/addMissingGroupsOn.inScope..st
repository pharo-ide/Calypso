building groups
addMissingGroupsOn: methodGroups inScope: aClassScope
	
	aClassScope classesDo: [ :each | each tagsForMethods do: [ :eachTag |	
		methodGroups 
			at: eachTag 
			ifAbsentPut: [ClyTaggedMethodGroup fromClasses: aClassScope tag: eachTag]	
	]].

	methodGroups at: ClyNoTagMethodGroup groupName ifPresent: [ :existing | 
		methodGroups 
			at: ClyNoTagMethodGroup groupName 
			put: (ClyNoTagMethodGroup fromClasses: aClassScope)]