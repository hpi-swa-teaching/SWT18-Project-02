accessing
selectedFontStyleIndex: anIndex

	anIndex = 0 ifTrue: [^self].
	self emphasis: anIndex - 1;
		changed: #selectedFontStyleIndex;
		changed: #contents