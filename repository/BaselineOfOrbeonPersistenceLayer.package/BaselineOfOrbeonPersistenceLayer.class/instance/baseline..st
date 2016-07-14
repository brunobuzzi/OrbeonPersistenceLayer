baseline
baseline: spec
  <baseline>

  spec
    for: #'common' do: [ 
		spec baseline: 'OrbeonPersistenceLayer' with: [
			  spec repository: 'github://brunobuzzi/OrbeonPersistenceLayer:master' ]].