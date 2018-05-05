as yet unclassified
buildWith: builder

	|windowSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'Font Picker Tool';
		extent: 500@500.
		
	^ builder build: windowSpec