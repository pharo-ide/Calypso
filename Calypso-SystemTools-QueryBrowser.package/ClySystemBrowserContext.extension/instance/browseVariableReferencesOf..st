*Calypso-SystemTools-QueryBrowser
browseVariableReferencesOf: variables
	"variables here are wrappers over low level variable objects. 
	In future we can move missing information to low level"
	tool spawnQueryBrowserOn: (ClyVariableReferences of: (variables collect: #variable))