# Chapter 7 - 開発の継続

## テストと最適化

### デバッグツール (DevTools)

DevToolsは、ブラウザ上で実行される品質改善のための測定可能なデバッグツールである。

#### DevToolsのインストール

```
$ flutter pub global activate devtools
```

##### DevToolsの実行

Visual Studio Codeでは、VS Codeパレットで `Dart: Open DevTools` を起動する。

他、コマンドラインでDebToolsを起動するには、下記コマンドを実行する。
```
$ flutter pub global run devtools
```

### DevToolsのデバッグ機能

 * Flutter inspector: アプリケーションの全体的なチェックが可能
 * Timeline: CPU/GPUスレッドでの１フレームごとのパフォーマンスを確認可能
 * Memory: メモリパフォーマンスをタイムランん形式で確認可能
 * Performance: CPUスレッド上のパフォーマンスが確認可能
 * Debugger: アプリケーションのデバッグ機能を提供
 * Logging: アプリ内で発生したログイベントを時系列で確認可能

### Flutterにおけるビルド種類

 * Debug: 開発でHot Reloadを利用したい時
 * Release: アプリケーションをリリースしたい時
 * Profile: アプリのパフォーマンスを最適化するための最低限のデバッグ機能を利用したい時
   - Profileモードでの実行は `$ flutter run --profile` コマンドで実行する

### テスト

#### Unitテスト
単一のファンクションやメソッド、クラスに対するテスト

```yaml
# testパッケージの追加 (pubspec.yaml)
dev_dependencies:
  test: 3.5.1 # 2024/9/30現在の最新
  flutter_test:
    sdk: flutter
```

#### ウィジェットテスト
UIコンポーネントであるウィジェットに対するテスト

```yaml
# pubspec.yaml に依存性の記述は、標準で追加されているので実際に記述する必要はない
dev_dependencies:
  flutter_test:
    sdk: flutter
```

#### Integrationテスト
UIコンポーネントだけではなく、サービスの挙動も含めて検証するテスト

```yaml
# 同上、標準で追加されているので実際に pubspec.yaml に記述する必要はない
dev_dependencies:
  flutter_test:
    sdk: flutter
```
