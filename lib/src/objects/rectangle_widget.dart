import 'package:flutter/material.dart';
import '../elements/flow_element.dart';
import 'element_text_widget.dart';

/// A kind of element
class RectangleWidget extends StatelessWidget {
  final FlowElement element;

  const RectangleWidget({
    super.key,
    required this.element,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: element.size.width,
      height: element.size.height,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: element.backgroundColor,
              boxShadow: [
                if (element.elevation > 0.01)
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(element.elevation, element.elevation),
                    blurRadius: element.elevation * 1.3,
                  ),
              ],
              border: Border.all(
                color: element.borderColor,
                width: element.borderThickness,
              ),
            ),
          ),
          ElementTextWidget(element: element),
        ],
      ),
    );
  }
}
