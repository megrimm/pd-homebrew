cask :v1 => 'pd-gem' do
  version '0.93.3'
  sha256 '08884215fe5843f05e02f799577c43a5577b6d46f01495eba48c93b391833fb1'

  url "http://gem.iem.at/releases/0.93.3/Gem-0.93.3-OSX-ppc_i386.tar.gz"
  name 'Gem'
  homepage 'http://gem.iem.at/'
  license :bsd

  suite 'Gem-0.93.3/Gem', :target => '/Applications/Pd.app/contents/resources/extra/Gem'
  suite 'Gem-0.93.3/pix_drum', :target => '/Applications/Pd.app/contents/resources/extra/pix_drum'
  suite 'Gem-0.93.3/pix_fiducialtrack', :target => '/Applications/Pd.app/contents/resources/extra/pix_fiducialtrack'
  suite 'Gem-0.93.3/pix_mano', :target => '/Applications/Pd.app/contents/resources/extra/pix_mano'

  # caveats do
  #  puts "staged_path #{staged_path}"
  # end
end
