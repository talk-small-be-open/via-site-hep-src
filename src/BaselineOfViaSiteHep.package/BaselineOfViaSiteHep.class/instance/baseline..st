baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Via' with: [
			spec
				repository: 'github://talk-small-be-open/via-base-src:hep-master/src';
				loads: #('default')
		].
		spec baseline: 'ViaTesting' with: [
			spec
				className: 'BaselineOfVia'; 
				repository: 'github://talk-small-be-open/via-base-src:hep-testing/src';
				loads: #('default')
		].

		spec package: 'ViaSiteHep' with: [
			spec 
				requires: #('Via') ].
		spec package: 'ViaSiteHepTesting' with: [
			spec
				file: 'ViaSiteHep';
				requires: #('ViaTesting')].


		spec
			group: 'default' with: #('Core' );
			group: 'testing' with: #('ViaSiteHepTesting');
			group: 'Core' with: #('ViaSiteHep' ). ].