baselines
baseline: spec
	<baseline>
	spec for: #'branchMaster' do: [
		spec baseline: 'Via' with: [
			spec
				repository: 'github://talk-small-be-open/via-base-src:hep-master/src';
				loads: #('default' 'hep')
		].
	].

	spec for: #'branchTesting' do: [
		spec baseline: 'Via' with: [
			spec
				repository: 'github://talk-small-be-open/via-base-src:hep-testing/src';
				loads: #('default' 'hep')
		].
	].

	spec for: #'common' do: [
		spec package: 'ViaSiteHep' with: [
			spec 
				requires: #('Via') ].

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #('ViaSiteHep' ). ].