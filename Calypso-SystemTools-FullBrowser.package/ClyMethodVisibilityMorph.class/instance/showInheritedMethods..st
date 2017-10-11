controlling
showInheritedMethods: aBoolean

	| browser |
	self isMethodsVisible == aBoolean ifTrue: [ ^self ].
	
	browser := methodGroupItem browser.
	aBoolean 
		ifTrue: [ browser enableVisibilityOfMethodsFrom: methodGroupItem actualObject ]
		ifFalse: [ browser disableVisibilityOfMethodsFrom: methodGroupItem actualObject ]