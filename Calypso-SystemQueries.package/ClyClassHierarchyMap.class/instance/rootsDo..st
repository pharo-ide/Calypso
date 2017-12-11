accessing
rootsDo: aBlock

	self containerForChildren 
		addAll: roots;
		do: aBlock