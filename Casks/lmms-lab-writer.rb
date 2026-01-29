cask "lmms-lab-writer" do
  version "0.1.0"
  sha256 "99730ee3bc2c6ff1b8803f08f2678c129b5ea549a86f3c655145964f34201142"

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
