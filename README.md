# ios-sample-app

A sample iOS app supporting [EarlGrey Tests](https://github.com/google/EarlGrey) on [Browserstack](https://www.browserstack.com/).

<img src="https://d2ogrdw2mh0rsl.cloudfront.net/production/images/earl-grey-icon.svg" height="100" /> ![BrowserStack Logo](https://d98b8t1nnulk5.cloudfront.net/production/images/layout/logo-header.png?1469004780)

## How to run

1. Select the device as "Generic iOS device"
2. Product -> Clean
3. Build the .app  zip
	1. Product -> Build For -> Testing
	2. From the shell, go to the DerivedData directory (normally ~/Library/Developer/Xcode/DerivedData/)
	3. cd Sample_iOS-&lt;random characters&gt;
	4. cd Build/Products/Debug-iphoneos/
	5. zip -r SampleApp.zip Sample\ iOS.app/
5. Use the ipa, and zip file to run on Browserstack
