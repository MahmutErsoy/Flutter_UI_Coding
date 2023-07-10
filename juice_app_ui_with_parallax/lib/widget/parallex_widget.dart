import 'package:flutter/material.dart';

import '../screen/detail_screen.dart';

class ParallexWidget extends StatefulWidget {
  const ParallexWidget({Key? key}) : super(key: key);

  @override
  State<ParallexWidget> createState() => _ParallexWidgetState();
}

class _ParallexWidgetState extends State<ParallexWidget> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.4);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  List<String> images = [
    "assets/berry.jpeg",
    "assets/orange.jpg",
    "assets/strawberry.jpeg",
    "assets/mixfruit.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: PageView.builder(
            itemCount: images.length,
            controller: _pageController,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(images[index])));
                  },
                  child: ImagePanel(images[index]));
            }));
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxHeight,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(listItemBox.size.topCenter(Offset.zero), ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction = (listItemOffset.dx / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final horizontalAlignment = Alignment(scrollFraction * 2 - 1, 0);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize = (backgroundImageKey.currentContext!.findRenderObject() as RenderBox).size;
    final listItemSize = context.size;
    final childRect = horizontalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      0,
      transform: Transform.translate(offset: Offset(childRect.left, 0)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

// ignore: must_be_immutable
class ImagePanel extends StatefulWidget {
  String path;
  ImagePanel(this.path, {super.key});

  @override
  State<ImagePanel> createState() => _ImagePanelState();
}

class _ImagePanelState extends State<ImagePanel> {
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Flow(
            delegate: ParallaxFlowDelegate(
              scrollable: Scrollable.of(context),
              listItemContext: context,
              backgroundImageKey: _backgroundImageKey,
            ),
            children: [
              AspectRatio(
                aspectRatio: 9 / 9,
                child: Container(
                  key: _backgroundImageKey,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(widget.path),
                    fit: BoxFit.cover,
                  )),
                  // child: Image.asset(images[index],fit: BoxFit.cover,),
                ),
              ),
            ]),
      ),
    );
  }
}
