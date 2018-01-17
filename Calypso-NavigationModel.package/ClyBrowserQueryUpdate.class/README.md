I represent information update from query result instance. I include updated metadata, total result size and item cache starting from particular position.

I was introduced to update cursor cache and metadata together by single message. It is important for remote scenario where query rsult is remote proxy and any interaction with it leads to network communication. I return all updated information in one request by single remote message.

Create my instances using following message:
	ClyBrowserQueryUpdate of: aBrowserQueryResult withItems: aBrowserQueryCache

Internal Representation and Key Implementation Points.

    Instance Variables
	itemCache:		<ClyBrowserQueryCache>
	metadata:		<ClyQueryResultMetadata>
	totalItemCount: <Integer>