converting
asScope: anotherTypedScopeClass
	"It will create new scope instance of given class but in same environment and with same basis"

	^ anotherTypedScopeClass ofAll: basisObjects in: environment named: name