cask "nxapi" do
	version "1.6.0"
	arch arm: "arm64-mac", intel: "mac"
	sha256 arm:   "57678863514931752a0b0756e593e4798b939a86af8e9a37fa282c34cea4529c",
		   intel: "4d4e3d0b0c7ded8c95f5ce25e9288b2e290ac836779150a27cd746ad1716f5bb"
  
	url "https://github.com/samuelthomas2774/nxapi/releases/download/v#{version}/Nintendo.Switch.Online-#{version}-#{arch}.zip"
	name "nxapi"
	desc "Unofficial Nintendo Switch Online/Parental Controls app. Show your Nintendo Switch presence in Discord, get friend notifications on desktop, and download and access SplatNet 2, NookLink, SplatNet 3 and Parental Controls data."
	homepage "https://github.com/samuelthomas2774/nxapi"
  
	app "Nintendo Switch Online.app"
  
	zap trash: [
	  "~/Library/Application Support/nxapi-app",
	  "~/Library/Preferences/uk.org.fancy.nxapi.app.plist",
	  "~/Library/Caches/nxapi-nodejs",
	  "~/Library/Application Support/nxapi-nodejs/persist"
	]
  end
  