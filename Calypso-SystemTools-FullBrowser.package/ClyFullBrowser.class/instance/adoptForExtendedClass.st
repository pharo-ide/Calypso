selection changes
adoptForExtendedClass
	| extendingPackages extraGroups |
	self classSelection isEmpty ifTrue: [ ^self ].
	methodGroupQuery := methodGroupQuery withoutItemsOfType: RPackage. "To remove previous package injection"
	(self classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	self adoptMetaLevelForSelectedClass. "it will also ensures method groups mode"
	
	extendingPackages := self packageSelection actualObjects.
	extraGroups := ClyConstantQuery 
				returning: extendingPackages as: ClyGroupedExtendingPackages new.
	extraGroups := methodGroupQuery scope adoptQuery: extraGroups.
	methodGroupQuery := methodGroupQuery , extraGroups