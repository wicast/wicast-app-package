cask 'open-stage-control' do
  version '1.30.1'
  sha256 :no_check

  url "https://openstagecontrol.ammd.net/packages/open-stage-control_#{version}_osx-arm64.zip"
  name 'Open Stage Control'
  homepage 'https://openstagecontrol.ammd.net/'

  livecheck do
    url 'https://framagit.org/api/v4/projects/jean-emmanuel%2Fopen-stage-control/releases'
    strategy :json do |json|
      json.first['tag_name']&.delete_prefix('v')
    end
  end

  app 'open-stage-control-darwin-arm64/open-stage-control.app'

end