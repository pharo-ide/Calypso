I am kind of null object for environment scope.

I am default scope of any query. I provide #instance singleton for this.

Also I prevent real execution of query by returning ClyUnknownResult instance from #query method. 
So environment is not requested to evaluate given query when query is bound to me.