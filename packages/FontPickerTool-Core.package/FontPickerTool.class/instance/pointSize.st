accessing
pointSize

	^pointSize ifNil: [self pointSize: self standardPointSize]