*Calypso-SystemTools-Core
selectMessage: aMessageDescription withNewSelector: newSelector
	"browser can select only messages which was created from methods"
	| method newMethod |
	method := aMessageDescription contextUser.
	newMethod := method origin >> newSelector.
	self selectMethod: newMethod