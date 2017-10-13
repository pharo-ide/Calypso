testing
queryToExpand: aDataSourceItem ifAbsent: absentBlock
	
	| scopeAndQuery |
	scopeAndQuery := childrenStructure 
		detect: [:each | aDataSourceItem type includesBehavior: each key ] 
		ifNone: absentBlock.
	^scopeAndQuery value asEnvironmentQuery