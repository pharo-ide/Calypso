accessing
adoptStateForSelectedClass
	| lastClass extendingPackages extraGroups |
	self classSelection isEmpty ifTrue: [ ^self ].
	lastClass := self classSelection lastSelectedItem.
	(lastClass isMarkedWith: ClyExtendedClassTag) ifFalse: [ ^self ].
	
	self adoptMetaLevelForSelectedClass.
	
	extendingPackages := self packageSelection actualObjects.
	extraGroups := ClyConstantQuery 
				returning: extendingPackages as: ClyGroupedExtendingPackages new.
	extraGroups scope: methodGroupQuery scope.
	methodGroupQuery := methodGroupQuery , extraGroups