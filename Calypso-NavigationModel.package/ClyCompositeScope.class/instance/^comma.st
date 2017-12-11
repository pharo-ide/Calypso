composition
, anotherTypedScope
	(anotherTypedScope isKindOf: ClyTypedScope) ifFalse: [ 
		^self error: 'Complex composition is not supported' ].
	^ClyCompositeScope on: (subscopes copyWith: anotherTypedScope)