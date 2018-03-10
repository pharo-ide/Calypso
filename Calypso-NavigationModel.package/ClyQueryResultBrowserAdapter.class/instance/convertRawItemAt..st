private
convertRawItemAt: index

	| rawItem |
	rawItem := rawResult itemAt: index.
	^rawItem asCalypsoBrowserItem
		prepareIn: environment