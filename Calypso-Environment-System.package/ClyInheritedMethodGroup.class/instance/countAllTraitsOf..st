accessing
countAllTraitsOf: aClass
	
	| result |
	result := 0.
	self allTraitsOf: aClass do: [ :user :each | result := result + 1].
	^result