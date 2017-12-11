testing
isRedundant
	"the level is reduntant if there are no extra classes to show"
	extraClassScope classesDo: [ :each | ^false ].
	^true