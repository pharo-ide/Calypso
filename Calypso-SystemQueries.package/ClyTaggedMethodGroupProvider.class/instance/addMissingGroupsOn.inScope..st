building groups
addMissingGroupsOn: methodGroups inScope: aClassScope
	
	aClassScope classesDo: [ :each | each tagsForMethods do: [ :eachTag |	
		methodGroups at: eachTag ifAbsentPut: [
			ClyMethodTagItem withMethodsFrom: aClassScope taggedBy: eachTag]	
	]].

	methodGroups at: ClyUnclassifiedSystemItem groupName ifPresent: [ :existing | 
		methodGroups 
			at: ClyUnclassifiedSystemItem groupName 
			put: (ClyUnclassifiedSystemItem withMethodsFrom: aClassScope)]