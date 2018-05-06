as yet unclassified
buildWith: builder

	|windowSpec panelSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'Font Picker Tool';
		extent: 500@500;
		children: OrderedCollection new.
		
	panelSpec := self buildButtonBarWith: builder.			
	windowSpec children add: panelSpec.
		
	^ builder build: windowSpec