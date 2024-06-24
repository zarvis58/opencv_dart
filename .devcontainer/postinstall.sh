#!/bin/bash

cat >> '/home/vscode/.environment' << EOF
# global environment
export ANDROID_HOME="/opt/android/sdk"
export ANDROID_NDK_HOME="/opt/android/ndk/r26c"
export PATH="\$PATH:/opt/flutter/bin"
export PATH="\$PATH:/opt/android/sdk/cmdline-tools/latest/bin"
export PATH="\$PATH:/opt/android/sdk/platform-tools"
export PATH="\$PATH:/opt/android/sdk/build-tools/34.0.0"
export PATH="\$PATH:/home/vscode/.pub-cache/bin"
EOF

echo 'Add environment to ~/.profile...'
echo "source '/home/vscode/.environment'" >> '/home/vscode/.profile'
echo 'Add environment to ~/.zprofile...'
echo "source '/home/vscode/.environment'" >> '/home/vscode/.zprofile'
source '/home/vscode/.environment'

echo 'Installing Android Platform 33...'
yes | sdkmanager 'platform-tools' 'platforms;android-33' 'build-tools;34.0.0'
flutter config --android-sdk '/opt/android/sdk'
yes | flutter doctor --android-licenses

# # Install FVM
# echo 'Installing FVM...'
# dart pub global activate fvm

# echo 'Configuring FVM...'
# fvm install stable
# fvm global stable
fvm install 3.19.6

# Disable telemetry
echo 'Disabling analytics...'
flutter --disable-analytics
dart --disable-analytics
