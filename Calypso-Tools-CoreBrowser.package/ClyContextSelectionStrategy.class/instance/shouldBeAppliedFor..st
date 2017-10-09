testing
shouldBeAppliedFor: aDataSourceSelection

	targetItemScope ifNil: [ 
	"if no scope specified strategy will be applied to any selection independently from it kind"	
		^true ].
	
	^aDataSourceSelection itemScope = targetItemScope