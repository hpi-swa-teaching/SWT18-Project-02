toolbuilder
buildWebFontPaneWith: builder
	"Build the import from google web font panel"
	
	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		children: {
			builder pluggableTextSpec new
				model: searchString;
				setText: #contents:;
				font: self filenameFont;
				help: 'Enter search string here' translated;
				softLineWrap: true;
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

			builder pluggableListSpec new
				model: self;
				list: #webFontResultArray;
				getIndex: #selectedSearchIndex;
				setIndex: #selectedSearchIndex:;
				frame: (LayoutFrame 
					fractions: (0@0.2 corner: 1@0.8));
				yourself	.
					
			 builder pluggableButtonSpec new
				model: self;
				label: 'Download now';
				action: #download;
				enabled: #hasResults;
				frame: (LayoutFrame 
					fractions: (0@0.8 corner: 1@1))
				yourself.	
		};
		yourself