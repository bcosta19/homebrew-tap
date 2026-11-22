cask "youtfast" do
  version "0.10.0"
  sha256 "dd8bebe683076d8983c99f4d7885e8a24e779651d5d0cd0468a742d296bb06a1"

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
