baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Via' with: [
			spec
				repository: 'github://talk-small-be-open/via-base-src:hep-master/src';
				loads: #('default')
		].
		spec baseline: 'Via-Testing' with: [
			spec
				className: 'BaselineOfVia'; 
				repository: 'github://talk-small-be-open/via-base-src:hep-testing/src';
				loads: #('default')
		].

		spec package: 'ViaSiteHep' with: [
			spec 
				requires: #('Via') ].
		spec package: 'ViaSiteHep-Testing' with: [
			spec
				file: 'ViaSiteHep';
				requires: #('Via-Testing')].


		spec
			group: 'default' with: #('Core' );
			group: 'testing' with: #('ViaSiteHep-Testing');
			group: 'Core' with: #('ViaSiteHep' ). ].