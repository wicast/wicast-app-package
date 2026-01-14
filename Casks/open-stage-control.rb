cask 'open-stage-control' do
  version '1.30.1'
  sha256 :no_check

  url "https://openstagecontrol.ammd.net/packages/open-stage-control_#{version}_osx-arm64.zip"
  name 'Open Stage Control'
  homepage 'https://openstagecontrol.ammd.net/'

  app 'open-stage-control.app'

end