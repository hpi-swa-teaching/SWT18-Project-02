toolbuilder
buildEToyButtonBarWith: builder
	
	| panelSpec buttonSpec|
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		layout: #vertical;
		children: OrderedCollection new.
		
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Create etoy';
		help: 'This is the BALLOON HELP FONT' translated;
		action: #createEtoy;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		enabled: #setNotEmpty;
		label: 'Close etoys';
		help: 'This is the BALLOON HELP FONT' translated;
		action: #closeEtoysMorphs;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	^panelSpec