running
setUp
	super setUp.
	"Unknown query is always bound to unknown scope which have no environment"
	environment := nil