user requests
browseVariableReferencesOf: variables
	"variables here are wrappers over low level variable objects. 
	In future we can move missing information to low level"
	tool browseMethodsFromQuery: (ClyVariableReferences of: (variables collect: #variable))