accessing
activeScope
	^activeScope ifNil: [ activeScope := self systemScope ]