testing
isEmpty
	classScope methodsDo: [ :method | 
		(self includesMethod: method) ifTrue: [ ^false ]].
	^true