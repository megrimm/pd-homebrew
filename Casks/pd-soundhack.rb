cask :v1 => 'pd-soundhack' do
  version '0.0.8'
  sha256 'cfc0ec40f5c8f664a8e2e4ccf6aedf7883789d159597611bedc1753421f7c619'

  url "http://soundhack.henthorne.org/soft/soundhack-0.0.8-pd-mac.zip"
  name 'soundhack'
  homepage 'http://puredata.info/downloads/soundhack'
  license :bsd

  suite 'soundhack-0.0.8-pd-mac', :target => '/Applications/Pd.app/contents/resources/extra/soundhack'

end
