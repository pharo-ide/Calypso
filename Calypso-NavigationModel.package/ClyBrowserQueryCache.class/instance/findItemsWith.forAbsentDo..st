accessing
findItemsWith: actualObjects forAbsentDo: absentBlock
	"it returns items which represent actualObjects.
	If there is no item for some of given objects method uses absentBlock result.
	For comparision cache uses identity while normally content delegates comparison to environment property which by default is equality.
	We use identity for cache because with remote scenario actual objects will be proxies which will send remote messages for each object to compare	and we want to escape it"
	
	^actualObjects collect: [ :eachObject |
		items detect: [ :item | item actualObject == eachObject ] ifNone: absentBlock]