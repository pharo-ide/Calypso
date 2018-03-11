private
convertRawItemAt: index

	| rawItem |
	rawItem := rawResult itemAt: index.
	^rawItem asCalypsoBrowserItem
		position: index;
		prepareIn: environment