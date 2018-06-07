baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				
				package: 'FontPickerTool-Core';
				package: 'FontPickerTool-Tests' with: [spec requires: #('FontPickerTool-Core')];
				yourself.
			spec
				group: 'default' with: #('FontPickerTool-Core');
				group: 'tests' with: #('FontPickerTool-Tests')];
				yourself