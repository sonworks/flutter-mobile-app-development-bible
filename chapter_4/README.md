# Chapter 4 - 状態管理

## 状態管理の基本

基本的な状態管理のアーキテクチャ
* MVC (Model-View-Controller)
* MVVM (Model-View-ViewModel)
* MVP (Model-View-Presenter)

Flutterでよく使われるアーキテクチャ
* Scoped Model
  - Flutterでよく使われているソフトウェアアーキテクチャパターンの１つ
  - シンプルな状態パターンで、導入コストや学習コストが高くない
* Redux
  - 比較的大規模なアプリケーションにも対応できるアーキテクチャパターン
  - Facebook社が提唱するFluxと呼ばれるアーキテクチャパターンをさらに発展させたもの
    - GUIアプリケーションの開発で複雑になりがちなデータの流れを１方向にまとめる開発思想である
* BLoC (Business Logic on Components)
  - 大規模アプリケーションにも対応できるアーキテクチャパターン
  - Dartの言語的な特徴を最大限に利用しているアーキテクチャパターン
    - 単純で強力かつテスト可能
