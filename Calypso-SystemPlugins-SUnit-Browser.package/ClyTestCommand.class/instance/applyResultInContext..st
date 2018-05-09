execution
applyResultInContext: aToolContext
	super applyResultInContext: aToolContext.
	"Following code forces browser update to not wait for deferred updating logic
	to give immediate feedback with actual test icons.
	Without this code the icons updating is visually delayed"
	
	aToolContext activeQueryView dataSource runUpdate.