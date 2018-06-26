accessing
selectedSearchIndex

	selectedSearchIndex ifNotNil: [^selectedSearchIndex].
	selectedSearchIndex := 1.
	^ selectedSearchIndex