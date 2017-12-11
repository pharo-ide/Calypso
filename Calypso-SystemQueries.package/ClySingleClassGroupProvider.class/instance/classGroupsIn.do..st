building groups
classGroupsIn: aPackageScope do: aBlock
	
	| classQuery |
	classQuery := self createClassQueryFrom: aPackageScope.
	classQuery hasEmptyResult ifTrue: [ ^self ].
	
	aBlock value: (self createClassGroupFor: classQuery from: aPackageScope)