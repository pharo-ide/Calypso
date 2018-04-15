instance creation
withClassesFrom: aPackageScope taggedBy: tagName
	| classQuery |
	classQuery := ClyTaggedClasses by: tagName from: aPackageScope.
	^ClyClassTagItem named: tagName on: classQuery.