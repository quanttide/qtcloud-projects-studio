/// 项目集页面


import 'package:flutter/material.dart';
import 'package:graphview/graphview.dart';


/// 项目集页面
class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 创建Graph
    final graph = Graph()..isTree = true;
    // 创建builder
    BuchheimWalkerConfiguration builder = BuchheimWalkerConfiguration();
    // 创建Node
    final Node rootNode = Node.Id('quanttide');
    final Node qtclassNode = Node.Id('qtclass');
    final Node qtservicesNode = Node.Id('qtservices');

    // Node到Graph
    graph.addEdge(rootNode, qtclassNode);
    graph.addEdge(rootNode, qtservicesNode);
    // 配置builder
    builder
      ..siblingSeparation = (100)
      ..levelSeparation = (150)
      ..subtreeSeparation = (150)
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM);

    return Scaffold(
      body: InteractiveViewer(
        constrained: false,
          boundaryMargin: const EdgeInsets.all(100),
          minScale: 0.01,
          maxScale: 5.6,
          child: GraphView(
            graph: graph,
            algorithm: BuchheimWalkerAlgorithm(builder, TreeEdgeRenderer(builder)),
            paint: Paint()
              ..color = Colors.green
              ..strokeWidth = 1
              ..style = PaintingStyle.stroke,
            builder: (Node node) {
              return ProgramWidget(node: node);
            },
          )),
    );
  }
}


class ProgramWidget extends StatelessWidget {
  final Node node;

  const ProgramWidget({
    super.key,
    required this.node,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(color: Colors.blue[100]!, spreadRadius: 1),
            ],
          ),
          child: Text(node.key?.value as String)),
    );
  }
}