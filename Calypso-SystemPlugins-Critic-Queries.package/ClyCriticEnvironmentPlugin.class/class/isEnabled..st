settings
isEnabled: aBoolean
	aBoolean 
		ifTrue: [ self enableMethodGroup ]
		ifFalse: [ self disableMethodGroup ]