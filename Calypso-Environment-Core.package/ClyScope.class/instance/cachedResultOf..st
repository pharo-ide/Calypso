accessing
cachedResultOf: anEnvironmentQueryOrCompatible
	| query |
	query := anEnvironmentQueryOrCompatible asEnvironmentQuery.
	^queryCache at: query ifAbsent: [ nil ]