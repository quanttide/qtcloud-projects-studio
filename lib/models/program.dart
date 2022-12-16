/// 项目集模型

import 'package:graphview/graphview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


/// 项目集节点
@Freezed()
class ProgramNode extends Node {
  ProgramNode(super.data);
}


/// 项目集图
@Freezed()
class ProgramGraph extends Graph {
  ProgramGraph();

  /// 从原始API导入数据
  /// TODO：设计领域模型和API以后决定入参格式。
  fromJson(){

  }
}
