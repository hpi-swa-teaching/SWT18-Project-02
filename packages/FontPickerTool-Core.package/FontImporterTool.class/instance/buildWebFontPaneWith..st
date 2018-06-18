toolbuilder
buildWebFontPaneWith: builder
	"Build the import from google web font panel"
	
	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		children: {
			builder pluggableTextSpec new
				model: self;
				setText: #searchString:;
				font: self filenameFont;
				frame: (LayoutFrame 
					fractions: (0@0 corner: 1@0)
					offsets: (0@0 corner: 0@ self filenameHeight));
				yourself.
				
			builder pluggableButtonSpec new
				model: self;
				label: #webFontsText;
				action: #searchWebFont;
				frame: (LayoutFrame 
					fractions: (0@0 corner: 1@0.2)
					offsets: (0@ self filenameHeight corner: 0@0));
				yourself.

			builder pluggableTextSpec new
				model: self;
				getText: #webFontResultText;
				askBeforeDiscardingEdits: false;
				indicateUnacceptedChanges: false;
				softLineWrap: false;
				frame: (LayoutFrame 
					fractions: (0@0.2 corner: 1@1));
				yourself		
		};
		yourself