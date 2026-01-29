cask "lmms-lab-writer" do
  version "0.1.0"
  sha256 "bf5ff80018d0e26556232ed396c1017a2ca30b42160929d6ce1eddd9a896a494"

  url "https://uv96nthsmy3qxwco.public.blob.vercel-storage.com/LMMs-Lab_Writer_#{version}_aarch64.pkg"
  name "LMMs-Lab Writer"
  desc "AI-native LaTeX editor for researchers"
  homepage "https://writer.lmms-lab.com"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  pkg "LMMs-Lab_Writer_#{version}_aarch64.pkg"

  uninstall pkgutil: "com.lmms-lab.writer"

  zap trash: [
    "~/Library/Application Support/com.lmms-lab.writer",
    "~/Library/Caches/com.lmms-lab.writer",
    "~/Library/Preferences/com.lmms-lab.writer.plist",
    "~/Library/Saved Application State/com.lmms-lab.writer.savedState",
  ]
end
