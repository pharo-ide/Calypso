accessing
basisSize
	| count |
	count := 0.
	self basisObjectsDo: [ :each | count := count + 1 ].
	^count