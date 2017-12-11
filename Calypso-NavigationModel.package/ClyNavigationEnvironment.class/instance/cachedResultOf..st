accessing
cachedResultOf: aQuery

	^queryCache at: aQuery ifAbsent: [ nil ]