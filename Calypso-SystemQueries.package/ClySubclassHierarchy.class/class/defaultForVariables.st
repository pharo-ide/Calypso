accessing
defaultForVariables
	^defaultForVariables ifNil: [ 
		defaultForVariables := self class inverse]