cask "qqbrowser" do
  version "4.5.123.400,123.400"
  sha256 :no_check

  url "https://dldir1.qq.com/invc/tt/QQBrowser_for_Mac.dmg"
  name "QQ浏览器"
  homepage "https://browser.qq.com/mac/"

  app "QQBrowser.app"

  uninstall quit: "com.tencent.QQBrowser"

  zap trash: [
    "~/Library/Application Support/QQBrowser2",
    "~/Library/Caches/com.tencent.QQBrowser",
    "~/Library/Caches/com.tencent.QQBrowser.helper",
    "~/Library/Caches/QQBrowser2",
    "~/Library/Preferences/com.tencent.QQBrowser.helper.EH.plist",
    "~/Library/Preferences/com.tencent.QQBrowser.helper.plist",
    "~/Library/Preferences/com.tencent.QQBrowser.plist",
    "~/Library/Saved Application State/com.tencent.QQBrowser.savedState",
  ]
end
