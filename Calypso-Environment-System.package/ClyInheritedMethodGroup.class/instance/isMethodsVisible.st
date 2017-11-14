testing
isMethodsVisible

	classScope do: [ :each |
		self allTraitsOf: each do: [:user :trait | 
			(classScope includes: trait) ifTrue: [^true]].
		each allSuperclassesDo: [ :superclass | 
			(classScope includes: superclass) ifTrue: [^true].
			self allTraitsOf: superclass do: [:user :trait | 
				(classScope includes: trait) ifTrue: [^true]].
		]
	].
	
	^false