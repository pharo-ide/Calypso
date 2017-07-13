building
buildFromObjects: objects
	"I must keep strongly analysis results of requested objects to prevent cleaning of critiques cache when they are still used by me"
	objectAnalysisResults := OrderedCollection new.
	
	objects do: [ :each | self buildFromObject: each]