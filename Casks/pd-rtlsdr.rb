cask :v1 => 'pd-rtlsdr' do
  version '0.1'
  sha256 'ff2e01f0644b637a308141603f891929cf291507e9f8918e2b7c5dd4b0f9e25c'

  url "https://github.com/tkzic/pd-rtlsdr/archive/master.zip"
  name 'pd-rtlsdr'
  homepage 'https://github.com/tkzic/pd-rtlsdr'
  license :bsd

  suite 'pd-rtlsdr-master/pd/macOS', :target => '/Applications/Pd.app/contents/resources/extra/rtlsdr'

end
