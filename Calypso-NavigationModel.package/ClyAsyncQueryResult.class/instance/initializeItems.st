initialization
initializeItems
	"async query should never reset existing items.
	Idea to seemlessly update items when new result is ready"
	items ifNil: [super initializeItems]