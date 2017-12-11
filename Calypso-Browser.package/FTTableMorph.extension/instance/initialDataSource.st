*Calypso-Browser
initialDataSource
	"it is ugly. but now it is easy to do like this. Normally it should be somehow supported by table package itself"
	^(function isKindOf: FTFilterFunction)
		ifTrue: [ function initialDataSource]
		ifFalse: [ nil ]