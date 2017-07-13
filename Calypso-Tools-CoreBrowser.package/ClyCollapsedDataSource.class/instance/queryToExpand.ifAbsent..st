testing
queryToExpand: aDataSourceItem ifAbsent: absentBlock
	
	| itemScope scopeAndQuery |
	itemScope := aDataSourceItem environmentScope.
	scopeAndQuery := childrenStructure 
		detect: [:each | itemScope includesBehavior: each key ] 
		ifNone: absentBlock.
	^scopeAndQuery value