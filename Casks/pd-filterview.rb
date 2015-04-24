cask :v1 => 'pd-filterview' do
  version '0.2'
  sha256 '0cb342ecc4f8718238e57b3d18bcb8841ed59707fb42725320631e13056be778'

  url "https://github.com/downloads/pd-projects/filterview/filterview-0.2-bin.tar.gz"
  name 'filterview'
  homepage 'http://puredata.info/downloads/filterview'
  license :bsd

  suite 'filterview', :target => '/Applications/Pd.app/contents/resources/extra/filterview'

end
