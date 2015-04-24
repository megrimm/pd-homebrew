cask :v1 => 'pd-list-abs' do
  version '0.1'
  sha256 '5f833d21e45dc97d559befa08599e5cf5e19ee74c650e068925dba1772f46fd1'

  url "http://sourceforge.net/projects/pure-data/files/libraries/list-abs/list-abs-0.1.tar.gz"
  name 'list-abs'
  homepage 'https://puredata.info/downloads/list-abs'
  license :bsd

  suite 'list-abs-0.1', :target => '/Applications/Pd.app/contents/resources/extra/list-abs'

end
