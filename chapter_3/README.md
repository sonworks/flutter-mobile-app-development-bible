# Chapter 3 - ウィジェット

 * ウィジェットはFlutterアプリケーションを構築する基本的な要素
 * UIほとんどをウィジェットを用いてコードで表現することは、Flutterの大きな特徴の１つ

## ウィジェットの基礎知識

### StatelessWidget

状態(State)を持たないウィジェットで、変化のある画面を実装することはできない。

### StatefulWidget

StatelessWidgetとは異なり、変化のある画面を実装することができる。
StatefulWidgetは、 `Widget` と `State` ２つのクラスから成り立っている。

| 種別 | 役割 | サンプルでのクラス名 |
| --- | --- | --- |
| Widget | Stateを作成して返す | MyApp |
| State | 状態を保持し、ウィジェットを描画する | _MyAppState |

