as yet unclassified
buildButtonBarWith: builder

	|panelSpec buttonSpec|
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		layout: #vertical;
		frame: (0.75@0.5 corner: 1@1);
		children: OrderedCollection new.
			
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Apply' translated;
		help: 'Apply the chosen settings for your chosen font type' translated;
		action: #apply;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Undo' translated;
		help: 'Undo the last font choice' translated;
		action: #undo;
		enabled: #stackNotEmpty;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Reset' translated;
		help: 'Go back to the default font settings' translated;
		action: #resetFonts;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Demo mode' translated;
		help: 'Change to demo mode (everything is bigger)' translated;
		action: #activateDemoMode;
		yourself.
	panelSpec children addLast: buttonSpec.
		
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Close' translated;
		help: 'Close the tool' translated;
		action: #close;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	^panelSpec