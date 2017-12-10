queries
isQuery: aQuery hasResultWhere: itemConditionBlock
	aQuery ensureScope: self.
	
	^environment isQuery: self hasResultWhere: itemConditionBlock