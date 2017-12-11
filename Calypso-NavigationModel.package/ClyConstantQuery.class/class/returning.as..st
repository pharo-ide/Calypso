instance creation
returning: objects as: aQueryResult
	^self new 
		resultItems: objects;
		requiredResult: aQueryResult 