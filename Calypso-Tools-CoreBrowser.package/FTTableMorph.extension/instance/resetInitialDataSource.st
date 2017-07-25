*Calypso-Tools-CoreBrowser
resetInitialDataSource
	"it is ugly. but now it is easy to do like this. Normally it should be somehow supported by table package itself"
	^(function isKindOf: FTFilterFunction)
		ifTrue: [ function resetInitialDataSource]
		ifFalse: [ nil ]