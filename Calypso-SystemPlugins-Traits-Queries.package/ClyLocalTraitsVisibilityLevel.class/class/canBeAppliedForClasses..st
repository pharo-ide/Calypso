testing
canBeAppliedForClasses: classItems

	^classItems anySatisfy: [ :each | each isMarkedWith: ClyTraitUserTag ]