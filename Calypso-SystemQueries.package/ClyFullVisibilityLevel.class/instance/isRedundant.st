testing
isRedundant
	"the level is reduntant if there are no interesting classes to show"
	extraClassScope asInterestingClassScope classesDo: [ :each | ^false ].
	^true