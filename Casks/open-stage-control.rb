cask 'open-stage-control' do
  version "1.31.1"
  sha256 :no_check

  url "https://openstagecontrol.ammd.net/packages/open-stage-control_#{version}_osx-arm64.zip"
  name 'Open Stage Control'
  homepage 'https://openstagecontrol.ammd.net/'

  livecheck do
    url 'https://openstagecontrol.ammd.net/download/'
    regex(/open-stage-control[._-]v?(\d+(?:\.\d+)+)[._-]osx/i)
  end

  app 'open-stage-control-darwin-arm64/open-stage-control.app'

end
