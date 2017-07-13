queries
query: anEnvironmentQueryOrCompatible

	| result query |
	query := anEnvironmentQueryOrCompatible asEnvironmentQuery.
	result := queryCache at: query ifAbsent: [nil]. "cache is weak dict where ifAbsentPut: not works"
	result ifNil: [ 
		result := query prepareResultOn: environment inScope: self.
		queryCache at: query put: result].
	result rebuildIfNeeded.
	^result newCursor