private
collectAllClasses
	| classes |
	classes := OrderedCollection new: basisObjects size.
	
	self classesDo: [ :each | classes add: each ].
	
	^classes