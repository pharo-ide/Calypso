testing
isMethodsVisible
	| allClasses |
	allClasses := classScope collectAllClasses asIdentitySet.
	
	classScope classesDo: [ :each |
		self allTraitsOf: each do: [:user :trait | 
			(allClasses includes: trait) ifTrue: [^true]].
		each allSuperclassesDo: [ :superclass | 
			(allClasses includes: superclass) ifTrue: [^true].
			self allTraitsOf: superclass do: [:user :trait | 
				(allClasses includes: trait) ifTrue: [^true]].
		]
	].
	
	^false