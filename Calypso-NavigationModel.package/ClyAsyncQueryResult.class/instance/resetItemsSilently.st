initialization
resetItemsSilently
	"Async result never reset own items. 
	They should keep previous values until actual result will built new one"
	
	actualResult resetItemsSilently 