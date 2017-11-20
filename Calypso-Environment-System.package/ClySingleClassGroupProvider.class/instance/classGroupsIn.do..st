building groups
classGroupsIn: aPackageScope do: aBlock
	
	| classQuery |
	classQuery := self createClassQueryFrom: aPackageScope.
	(aPackageScope environment isQueryEmpty: classQuery) ifTrue: [ ^self ].
	
	aBlock value: (self createClassGroupFor: classQuery from: aPackageScope)