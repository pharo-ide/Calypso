testing
shouldBeAppliedFor: aSelectionOrItem

	targetItemType ifNil: [ 
	"if no scope specified strategy will be applied to any selection independently from it kind"	
		^true ].
	
	^aSelectionOrItem isBasedOnItemType: targetItemType