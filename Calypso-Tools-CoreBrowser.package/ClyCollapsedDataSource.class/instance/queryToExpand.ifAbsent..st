testing
queryToExpand: aDataSourceItem ifAbsent: absentBlock
	
	| typeAndScopeAndQuery |
	typeAndScopeAndQuery := childrenStructure 
		detect: [:each | aDataSourceItem type includesBehavior: each key ] 
		ifNone: absentBlock.
	^typeAndScopeAndQuery value