# Chapter 2

## Flutterインストール

### インストール （macOS for Intel Processor）

[Flutter公式HP](https://docs.flutter.dev/get-started/install)

1. [flutter_macos_3.22.2-stable.zip](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.22.2-stable.zip) SDK ダウンロード (2024/6/26現在の最新版)
2. `~/development/` フォルダー作成
3. Flutter SDK 設置 (解凍)<br>
`unzip ~/Downloads/flutter_macos_3.22.2-stable.zip -d ~/development/`
4. `~/development/flutter` でインストール完了

### パスを通す


```
% cd ~/
% export PATH="$PATH:[フルパス]/development/flutter/bin" > .zshenv
% source .zshenv
```

### flutter doctor によるインストール確認

```
% flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.22.2, on macOS 14.5 23F79 darwin-x64, locale ja-JP)
[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[!] Xcode - develop for iOS and macOS (Xcode 15.4)
    ...(省略)...
[✓] Chrome - develop for the web
[✓] Android Studio (version 2023.2)
[✓] IntelliJ IDEA Community Edition (version 2023.1.1)
[✓] VS Code (version 1.90.2)
[✓] Connected device (2 available)
[✓] Network resources

! Doctor found issues in 1 category.
```

※ 警告 `[!]` やエラー `[✗]` は解決し、全て [✓] になるようにしておく

### その他 (オプション)

 * Android Studio にて Flutterプラグインをインストールする
 * Androidエミュレーター、および、iOSシミュレーターを作成する


### 起動しているデバイス確認
```
% flutter devices
Found 2 connected devices:
...(省略)...
```
