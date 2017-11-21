queries
query: aQuery
	aQuery scope ifNil: [ aQuery scope: self ].
	
	^environment query: aQuery