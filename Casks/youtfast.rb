cask "youtfast" do
  version "0.11.0"
  sha256 "a6c6123754d83c63ad731f72c63977f5d6d426ddeea81c733e2eb99e68478aa4"

  url "https://github.com/bcosta19/youtfast/releases/download/v#{version}/youtfast-v#{version}-aarch64-apple-darwin.zip"
  name "YouTFast"
  desc "Small native YouTube client built with Rust, egui, and libmpv"
  homepage "https://github.com/bcosta19/youtfast"

  depends_on arch: :arm64
  depends_on macos: :sequoia
  depends_on formula: "deno"
  depends_on formula: "yt-dlp"

  app "youtfast-v#{version}-aarch64-apple-darwin/YouTFast.app"
  binary "#{appdir}/YouTFast.app/Contents/MacOS/youtfast"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/YouTFast.app"]
  end

  zap trash: [
    "~/Library/Application Support/youtfast",
    "~/Library/Caches/youtfast",
  ]
end
