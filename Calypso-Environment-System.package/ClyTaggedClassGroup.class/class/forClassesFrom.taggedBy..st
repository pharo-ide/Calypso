instance creation
forClassesFrom: aPackageScope taggedBy: tagName
	| classQuery |
	classQuery := ClyTaggedClasses by: tagName from: aPackageScope.
	^ClyTaggedClassGroup named: tagName on: classQuery.