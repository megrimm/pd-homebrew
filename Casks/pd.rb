cask :v1_1 => 'pd' do
  version '0.46-7'
  sha256 '6a07555221b135e705643f5def6abc6cb11a41fcde10264a5d25fe196fb9fb01'

  url "http://msp.ucsd.edu/Software/pd-#{version}-64bit.mac.tar.gz"
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'
  license :bsd

<<<<<<< Updated upstream
  app "Pd-#{version}-64bit.app"

  postflight do
    set_permissions "#{staged_path}/Pd-#{version}-64bit.app", 'u+w'
=======
  app 'Pd-0.46-7-64bit.app'

  postflight do
    set_permissions "#{staged_path}/Pd-0.46-7-64bit.app", 'u+w'
>>>>>>> Stashed changes
  end
end
