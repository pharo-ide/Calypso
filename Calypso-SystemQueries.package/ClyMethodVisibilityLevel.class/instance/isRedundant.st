testing
isRedundant
	"the level is reduntant if there are no extra classes to show"
	extraClassScope ifNil: [ ^true ].
	extraClassScope classesDo: [ :each | ^false ].
	^true