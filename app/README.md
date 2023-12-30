# Pre-requisites

- Install Android SDK/NDK
- Make sure `ANDROID_HOME` and `NDK_HOME` points correctly. If using Android Studio:

    export ANDROID_HOME=$HOME/Android/Sdk
    export NDK_HOME=$ANDROID_HOME/build-tools/<ver>

- Install cargo-mobile2 for being able to build for Android/iPhone

    cargo install --git https://github.com/tauri-apps/cargo-mobile2

# winit

This is just the [`winit` window example](https://github.com/rust-windowing/winit/blob/master/examples/window.rs) with very light modifications:

- The `#[mobile_entry_point]` annotation generates all the boilerplate `extern` functions for mobile.
- Logging on Android is done using `android_logger`.

To run this on desktop, just do `cargo run` like normal! For mobile, use `cargo android run` and `cargo apple run` respectively (or use `cargo android open` and `cargo apple open` to open in Android Studio and Xcode respectively).
