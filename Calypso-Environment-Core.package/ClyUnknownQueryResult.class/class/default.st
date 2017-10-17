default
default
	^default ifNil: [ default := self of: nil inScope: ClyUnknownScope default  ]