opening
openOnPackage: aPackage

	| browser |
	browser := self open.	
	browser selectPackage: aPackage.
	^browser