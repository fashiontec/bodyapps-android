# Create and start emulator
echo "no" | android create avd --force -n test -t $ANDROID_TARGET --abi $ANDROID_ABI
emulator -avd test -no-skin -no-audio -no-window &
adb wait-for-device
adb shell input keyevent 82 &

./gradlew connectedAndroidTest
