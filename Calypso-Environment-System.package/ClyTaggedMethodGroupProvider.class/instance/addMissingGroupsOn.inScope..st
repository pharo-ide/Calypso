building groups
addMissingGroupsOn: methodGroups inScope: aClassScope
	
	aClassScope classesDo: [ :each | each tagsForMethods do: [ :eachTag |	
		methodGroups at: eachTag ifAbsentPut: [
			ClyTaggedMethodGroup from: aClassScope tag: eachTag]	
	]].

	methodGroups at: ClyNoTagMethodGroup groupName ifPresent: [ :existing | 
		methodGroups 
			at: ClyNoTagMethodGroup groupName 
			put: (ClyNoTagMethodGroup from: aClassScope)]