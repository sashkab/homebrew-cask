cask "eclipse-php" do
  version "4.18.0,2020-12:R"
  sha256 "3f38772a0022bf9309e06ab4b9f950dc9cc62bbeda7917674ff72da490245ef4"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-php-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for PHP Developers"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://projects.eclipse.org/releases/"
    strategy :page_match do |page|
      page.scan(%r{href=.*projects.eclipse.org/releases/(\d+-\d+)}i).map do |release|
        version_page = Net::HTTP.get(URI.parse("https://projects.eclipse.org/releases/#{release[0]}"))
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse PHP.app"
end
