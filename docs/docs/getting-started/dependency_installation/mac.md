# Setting up macOS for iOS builds

## 1. Install Xcode

1. Open the App Store app by clicking on the Apple logo in the menu bar and then selecting “App Store...".
2. Click on the search field and type Xcode.
3. Locate Xcode and click Get.
4. The store page for Xcode opens up. Click the Get button again.
6. Once installed, open Xcode by clicking Open and agree to the terms of service. Xcode will install components afterwards.
7. Finally, open up a terminal and run `sudo xcode-select -s /Applications/Xcode.app/Contents/Developer`.

## 2. Install Homebrew, Python, and CMake

1. Install Homebrew:

		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Install Python and CMake: 

		brew install python3 cmake

# Setting up macOS for Android builds

## 1. Install Homebrew, Java, Python, and CMake

1. Install Homebrew:

		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Install Java 8:

		brew tap caskroom/versions
		brew cask install java8

4. Install Python and CMake:

		brew install python3 cmake

## 2. Install Android Studio

### 2.1 Download Android Studio

1. Go to https://developer.android.com/studio.
1. Click “Download Android Studio".
1. Agree to the Terms and Conditions.

### 2.2 Complete the Installation

1. Once the download is completed, open the DMG.
1. Drag Android Studio.app and drop it on the Applications folder icon.
1. Open Android Studio using Finder or Spotlight.
1. Follow the steps in the setup wizard.
3. Stay on the "Welcome to Android" screen and complete the steps below to complete the installation.

> For Boden, it's sufficient to select the default setup type in the Android Studio Setup wizard. When asked, grant permission to the Intel HAXM installer to allow for Android device emulation.

### 2.3 Install Android NDK

1. On the “Welcome to Android” screen, click “Configure” and select “SDK Manager".
1. Click on the “SDK Tools” tab.
1. Select “NDK” from the list and click OK.
1. A prompt appears asking you to confirm the change. Do so by clicking OK.
1. Accept the NDK license agreement.
1. The NDK component is being installed, grab another drink.
1. After the installation has finished, click Finish. The installation is now complete.