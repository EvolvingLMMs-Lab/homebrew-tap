cask "lmms-lab-writer" do
  version "0.1.0"
  sha256 "301a58baf6e5a9cf7ed57b7b736362716471e01d424313be06e9e9585ff5bffb"

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
