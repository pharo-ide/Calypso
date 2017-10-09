testing
shouldBeAppliedFor: selectionScopeClass

	targetItemScope ifNil: [ 
	"if no scope specified strategy will be applied to any selection independently from it kind"	
		^true ].
	
	^selectionScopeClass = targetItemScope