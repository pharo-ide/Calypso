testing
queryToExpand: aDataSourceItem ifAbsent: absentBlock
	
	| itemTypeAndQuerySelector |
	itemTypeAndQuerySelector := childrenStructure 
		detect: [:each | aDataSourceItem type includesBehavior: each key ] 
		ifNone: absentBlock.
	^aDataSourceItem type 
		perform: itemTypeAndQuerySelector value 
		with: aDataSourceItem actualObject