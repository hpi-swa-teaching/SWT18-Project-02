toolbuilder
buildExampleButtonBarWith: builder

	|panelSpec buttonSpec|
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		layout: #horizontal;
		children: OrderedCollection new.
			
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Example' translated;
		help: 'Open example window' translated;
		action: #openExample;
		yourself.
	panelSpec children add: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Close all' translated;
		help: 'Close all example windows' translated;
		action: #closeExampleWindows;
		yourself.
	panelSpec children add: buttonSpec.
	
	^panelSpec