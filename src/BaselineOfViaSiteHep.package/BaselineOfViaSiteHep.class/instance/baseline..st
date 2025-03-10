baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Via' with: [
			spec
				repository: self viaRepoUrl;
				loads: #('default')
		].

		spec package: 'ViaSiteHep' with: [
			spec 
				requires: #('Via')].

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #('ViaSiteHep' ). ].