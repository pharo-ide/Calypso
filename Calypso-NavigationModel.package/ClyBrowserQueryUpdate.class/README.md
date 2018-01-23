I represent information update from ClyEnvironmentContent instance. I include updated metadata and item cache from particular position.

I was introduced to update cursor cache and metadata together by single message. It is important for remote scenario where content is remote proxy and any interaction with it leads to network communication. I allows to return all updated information in one request by single remote message.

Create my instances using following message:
	ClyEnvironmentContentUpdate of: anEnvironmentContent withItems: anEnvironmentContentCache

Internal Representation and Key Implementation Points.

    Instance Variables
	itemCache:		<ClyEnvironmentContentCache>
	metadata:		<ClyEnvironmentContentMetadata>