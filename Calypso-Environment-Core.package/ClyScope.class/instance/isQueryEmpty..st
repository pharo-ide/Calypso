queries
isQueryEmpty: aQuery
	aQuery scope ifNil: [ aQuery scope: self ].
	
	^environment isQueryEmpty: aQuery