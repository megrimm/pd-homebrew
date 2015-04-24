cask :v1 => 'pd-purepd' do
  version '0.1.1'
  sha256 'a670c612019d2b5715deabd66f914d86db56c92d898b98fb573b0bda94bb9389'

  url "http://sourceforge.net/projects/pure-data/files/libraries/purepd/purepd-0.1.1.tar.gz"
  name 'purepd'
  homepage 'http://puredata.info/downloads/purepd'
  license :bsd

  suite 'purepd-0.1.1', :target => '/Applications/Pd.app/contents/resources/extra/purepd'

end
