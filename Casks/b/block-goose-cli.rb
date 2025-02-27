cask "block-goose-cli" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.10"
  sha256 arm:   "c0c2fe5795c9e1d04fc51c397ede60c8e7d31a2830c2e55d190bd544cdd4357f",
         intel: "b73d3e02110a0390b0d180c75a9b0481a611736f1b1e2edacf16101364bcda2b"

  url "https://github.com/block/goose/releases/download/v#{version}/goose-#{arch}-apple-darwin.tar.bz2",
      verified: "github.com/block/goose/"
  name "Goose CLI"
  desc "Command-line interface for Goose"
  homepage "https://block.github.io/goose/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  binary "goose"

  zap trash: "~/.config/goose"
end
