# Chapter 5 - ライブラリの実装

## パッケージの最小構成

 * pubspec.yaml
   - ライブラリのバージョン管理、公開されていないライブラリを参照する、など
 * lib
   - ライブラリコードを lib ディレクトリ内に配置することで他のライブラリからも参照可能な状態になる
   - lib ディレクトリ内階層構造に制限がないが、慣習的に `lib/src` 配下のソースコードは private と見なされる
 * lib/shelf.dart
   - 全ての公開APIを保持している
   - 他ライブラリで、このファイルをimportすることで全ての機能が利用可能になる
   - `lib/src` 以下の private なディレクトリ群を export し、外部から利用可能な状態とする

## パッケージの実装

### パッケージの種類
 * Dartパッケージ
   - Dart言語のみで記述されているライブラリを指す
   - ウィジェットのみを利用したパッケージ、UIコンポーネントのパッケージ化、など
 * Pluginパッケージ
   - Dart言語のみならず、各 Platform (iOS/Android) 固有の実装を含むライブラリを指す
   - 外部へのシェア機能を提供するパッケージ、Share Extension/Action、など

#### Dartパッケージ

##### Step1 Dartパッケージの生成
```
$ flutter create --template=package {パッケージ名}
```
パッケージを生成する際は、 `flutter create` コマンドに `--template=package` のオプションを付ける必要がある。
上記のコマンドを実行するとプロジェクトに２つのクラスが生成される。

1. lib/{パッケージ名}.dart : 外部に公開する実装を記述するクラス(dartのみの記述となる)
2. test/{パッケージ名}.dart : Unitテストを記述するクラス

##### Step2 Dartパッケージの実装
`lib/{パッケージ名}.dart` に必要な実装を追加する。
また、実装の際は複数ファイルを利用することになるため、libディレクトリ内にファイルを配置しておく必要がある。

パッケージは `pubspec.yaml` にてバージョンが管理される。例えば、helloパッケージを作成する場合は、下記の通り、記述する
```yaml
dependencies
  hello: ^0.12.0+2
```

利用するプロジェクト側では pubspec.yaml に依存性を記述して、 `flutter pub get` コマンドを実行することで、 lib/{パッケージに記述したクラス名}.dart へのアクセスが可能になる。

#### Pluginパッケージ

Pluginパッケージの前に、Platform Channelの概要を知っておく。

>Flutterは、iOS/Android上で利用されるプラットフォーム固有のAPIに対応するため、Platform Channelと呼ばれる柔軟なシステムを持っている。Platform Channelはコード生成ではなく、メッセージパッシングによるモデルを利用している。<br>
Flutter側で何らかの機能が呼び出されると、Platform Channelを介してホストに対してメッセージを送信することとなる。<br>
一方、ホスト側はPlatform Channelにメッセージが届いてないかを監視したり、メッセージが届けば受けつったりする。<br>
つまり、Flutterと各プラットフォーム(iOS/Android)は、Platform Channel上でバイナリーデータをやり取りする。

##### Step1 Pluginパッケージの生成
```
# Java (Android), Objective-C (iOS) を利用する場合
$ flutter create --org com.example --template=plugin {パッケージ名}

# Kotlin (Android), Swift (iOS) を利用する場合
$ flutter create --org com.example --template=plugin -i swift -a kotlin {パッケージ名}
```
Pluginパッケージを生成する際は、 `--template=plugin` オプションと、ドメイン `com.example.company(仮)` を付与する必要がある。

例えば、 hello パッケージを生成すると、helloディレクトリに複数のファイルが生成される。
1. lib/hello.dart : Dartパッケージと同じく、外部に公開するクラス
2. android/src/main/java/com/example/hello/HelloPlugin.java : Android固有の実装を記述するクラス
3. ios/Classes/HelloPlugin.m : iOS固有の実装を記述するクラス
4. example/ : hello.dartで公開するFlutterのサンプルアプリケーションを記述するプロジェクトの領域

##### Step2 Pluginパッケージの実装

Android Studio または Xcode で参照機能を利用するためには、下記コマンド例の通り、Flutterアプリを少なくとも一度はビルドしておく必要がある。
```
# Android
$ cd {パッケージ名}/example; flutter build apk

# iOS
$ cd {パッケージ名}/example; flutter build ios --no-codesign
```
