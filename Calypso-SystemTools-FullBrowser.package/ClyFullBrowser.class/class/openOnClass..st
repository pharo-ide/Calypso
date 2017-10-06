opening
openOnClass: aClass

	| browser |
	browser := self open.	
	browser selectClass: aClass.
	^browser