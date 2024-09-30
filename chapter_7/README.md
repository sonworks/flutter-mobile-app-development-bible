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

