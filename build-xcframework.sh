xcodebuild archive -scheme Himotoki-macOS \
  -destination "generic/platform=macOS" \
  -archivePath build/macosx \
  SKIP_INSTALL=NO
xcodebuild archive -scheme Himotoki-iOS \
  -destination "generic/platform=iOS" \
  -archivePath build/iphoneos \
  SKIP_INSTALL=NO
xcodebuild archive -scheme Himotoki-iOS \
  -destination "generic/platform=iOS Simulator" \
  -archivePath build/iphonesimulator \
  SKIP_INSTALL=NO
xcodebuild archive -scheme Himotoki-iOS \
  -destination "generic/platform=macOS" \
  -archivePath build/maccatalyst \
  SKIP_INSTALL=NO
xcodebuild archive -scheme Himotoki-tvOS \
  -destination "generic/platform=tvOS" \
  -archivePath build/appletvos \
  SKIP_INSTALL=NO
xcodebuild archive -scheme Himotoki-tvOS \
  -destination "generic/platform=tvOS Simulator" \
  -archivePath build/appletvsimulator \
  SKIP_INSTALL=NO
xcodebuild archive -scheme Himotoki-watchOS \
  -destination "generic/platform=watchOS" \
  -archivePath build/watchos \
  SKIP_INSTALL=NO
xcodebuild archive -scheme Himotoki-watchOS \
  -destination "generic/platform=watchOS Simulator" \
  -archivePath build/watchsimulator \
  SKIP_INSTALL=NO

rm -rf Himotoki.xcframework
xcodebuild -create-xcframework \
  -framework build/macosx.xcarchive/Products/@rpath/Himotoki.framework \
  -framework build/iphoneos.xcarchive/Products/@rpath/Himotoki.framework \
  -framework build/iphonesimulator.xcarchive/Products/@rpath/Himotoki.framework \
  -framework build/maccatalyst.xcarchive/Products/@rpath/Himotoki.framework \
  -framework build/appletvos.xcarchive/Products/@rpath/Himotoki.framework \
  -framework build/appletvsimulator.xcarchive/Products/@rpath/Himotoki.framework \
  -framework build/watchos.xcarchive/Products/@rpath/Himotoki.framework \
  -framework build/watchsimulator.xcarchive/Products/@rpath/Himotoki.framework \
  -output Himotoki.xcframework
