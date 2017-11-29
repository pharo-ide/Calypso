execution
buildResult: aQueryResult
	"I must keep strongly analysis results of requested objects to prevent cleaning of critiques cache when they are still used by me"
	| critic |
	objectAnalysisResults := OrderedCollection new.
	critic := scope systemCritic.

	scope basisObjects do: [ :each | | result |
		result := critic analyze: each.
		objectAnalysisResults add: result ].

	aQueryResult fillWith: self collectCritiques