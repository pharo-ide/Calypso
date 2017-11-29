tree support
queryToExpand: aDataSourceItem ifAbsent: absentBlock
	
	| itemTypeAndQuerySelector |
	itemTypeAndQuerySelector := treeStructure 
		detect: [:each | aDataSourceItem type includesBehavior: each key ] 
		ifNone: absentBlock.
	^aDataSourceItem type 
		perform: itemTypeAndQuerySelector value 
		with: aDataSourceItem actualObject
		with: self dataSource queryEnvironment