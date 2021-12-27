# Add the following lines to the end of your ~/.profile file

# Additional exports for my commands
export PATH=~/bin:$PATH

# Android tool commands
export PATH=~/adb-fastboot/platform-tools:$PATH

export ANDROID_SDK_ROOT=~/Android/Sdk
export ANDROID_CMD_TOOLS=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
export ANDROID_EMULATOR=$ANDROID_SDK_ROOT/emulator
export ANDROID_NDK_HOME=$ANDROID_SDK_ROOT/ndk/22.1.7171670
export PATH=$ANDROID_CMD_TOOLS:$PATH
export PATH=$ANDROID_NDK_HOME:$PATH
export PATH=$ANDROID_EMULATOR:$PATH
