I adopt ClyAsyncQueryResult retrieving ClyBrowserQueryResult to the ClyBrowserQueryResult.

I am used by ClyAsyncQueryResult in case when actual query produces kind of ClyBrowserQueryResult. In that case actual result items are ClyBrowserItem instances. But owner ClyAsyncQueryResult is not a kind of ClyBrowserQueryResult. 
So without special adapter nobody will collect properties of retrieved browser items. And browser query interface will not be supported.
Notice that ClyQueryResultBrowserAdapter can not be used in that case because it expects that items real objects instead of ClyBrowserItem instances. It required details to correctly implement items query interface.

When async result retrives another basic result then my superclass is used as adapter as in any other cases