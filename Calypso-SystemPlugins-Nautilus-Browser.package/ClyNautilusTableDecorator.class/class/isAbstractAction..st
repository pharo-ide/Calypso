private
isAbstractAction: aButton	
	^(aButton isKindOf: Form) 
		and: [ (Smalltalk ui iconNamed: #abstractIcon) == aButton ] 