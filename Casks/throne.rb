cask "throne" do
  version "1.2.4"
  arch arm: "arm64", intel: "amd64"

  sha256 arm: "ef9fb2209088701e4926d3520712c6b6f737b81d8b6c40e139b7a913840f48eb",
         intel: "09dc2b830d0967bd7dfb6028c6ed513ac82ed1aaf0082f4b2b5ec326b8636f8a"

  url "https://github.com/throneproj/Throne/releases/download/#{version}/Throne-#{version}-macos-#{arch}.zip",
      verified: "github.com/throneproj/Throne/"
  name "Throne"
  desc "Cross-platform GUI proxy utility (powered by sing-box)"
  homepage "https://github.com/throneproj/Throne"

  livecheck do
    url "https://api.github.com/repos/throneproj/Throne/releases/latest"
    strategy :json do |json|
      json["tag_name"]
    end
  end

  app "Throne/Throne.app"
end
