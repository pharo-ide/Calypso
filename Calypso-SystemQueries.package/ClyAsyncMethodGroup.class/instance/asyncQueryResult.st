accessing
asyncQueryResult
	^ asyncQueryResult ifNil: [ asyncQueryResult := self loadAsyncQueryResult ]