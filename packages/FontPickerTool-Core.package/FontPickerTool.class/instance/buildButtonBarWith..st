as yet unclassified
buildButtonBarWith: builder

	|panelSpec buttonSpec|
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		layout: #vertical;
		frame: (0@0.5 corner: 0.5@1);
		children: OrderedCollection new.
			
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'default text font...' translated;
		help: 'Choose the default font to be used for code and  in workspaces, transcripts, etc.' translated;
		action: #chooseSystemFont;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'defaultfixed font...' translated;
		help: 'Choose the default font to be used for text that needs fixed width characters for layouting etc.' translated;
		action: #chooseFixedFont;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'list font...' translated;
		help: 'Choose the font to be used in list panes' translated;
		action: #chooseListFont;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'flaps font...' translated;
		help: 'Choose the font to be used on textual flap tabs' translated;
		action: #chooseFlapsFont;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'eToys font...' translated;
		help: 'Choose the font to be used on eToys environment' translated;
		action: #chooseEToysFont;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'eToys title font...' translated;
		help: 'Choose the font to be used in titles on eToys environment' translated;
		action: #chooseEToysTitleFont;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	^panelSpec