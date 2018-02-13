building
fillWith: classes
	items := classes collect: [ :each |
		(each isKindOf: Association) 
			ifTrue: [ each ] 
			ifFalse: [ 
				each isObsolete 
					ifTrue: [ GlobalVariable 
						key: (each name allButFirst: 'AnObsolete' size) asSymbol 
						value: each]
					ifFalse: [ each instanceSide binding ]]]
