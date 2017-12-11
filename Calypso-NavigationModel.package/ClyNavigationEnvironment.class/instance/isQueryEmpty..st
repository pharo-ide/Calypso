queries
isQueryEmpty: aQuery
	| result |
	result := queryCache at: aQuery ifAbsent: [ nil ].	"cache is weak dict where ifAbsentPut: not works"
	result ifNotNil: [ 
		result isBuilt ifTrue: [ ^result isEmpty ]].
	^ aQuery checkEmptyResult