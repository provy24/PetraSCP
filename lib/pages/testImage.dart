import 'package:PetraSCP/pages/image_map.dart';
import 'package:flutter/material.dart';

class PickImage extends StatefulWidget {
  const PickImage({Key key}) : super(key: key);

  @override
  _PickImageState createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  @override
  static List<List<Offset>> points = [
    [
      Offset(178, 152),
      Offset(148, 179),
      Offset(125, 173),
      Offset(129, 191),
      Offset(87, 191),
      Offset(130, 226),
      Offset(121, 270),
      Offset(182, 285),
      Offset(185, 272),
      Offset(219, 276),
      Offset(239, 260),
      Offset(218, 225),
      Offset(245, 186),
    ]
  ];

  double posx = 100.0;
  double posy = 100.0;

  bool isBetween(num from, num to) {
    return from < 176 && 192 < to;
  }

  List sensory = [];
  String pinPick = '';
  void onTapDown(BuildContext context, TapDownDetails details) {
    print('${details.globalPosition}');
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    setState(() {
      posx = localOffset.dx;
      posy = localOffset.dy;

      points.insert(0, [Offset(posx, posy)]);

      if ((176 <= posx && posx <= 254) && (330 <= posy && posy <= 360)) {
        pinPick = 'Pectoralis Major';
        print('Between');
        sensory.insert(0, pinPick);
        print(sensory);
        //Canvas canvas.drawPoints(PointMode.points, points, paint1);
        //paint();
      } else {
        print('Not between');
      }
    });
  }

  final List<Path> polygonRegions = points.map((e) {
    Path p = Path();
    p.addPolygon(e, true);
    return p;
  }).toList();
  final List<Color> colors =
      List.generate(points.length, (index) => Color.fromRGBO(50, 50, 200, 0.5));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("flutter_image_map Example")),
            body: GestureDetector(
              child: ImageMap(
                  imagePath: 'assets/front.png',
                  imageSize: Size(698, 566),
                  onTap: (i) {
                    colors[i] = colors[i] == Color.fromRGBO(50, 50, 200, 0.5)
                        ? Color.fromRGBO(50, 200, 50, 0.5)
                        : Color.fromRGBO(50, 50, 200, 0.5);
                    print(i);
                    setState(() {});
                  },
                  regions: polygonRegions,
                  regionColors: colors),
              onTapDown: (TapDownDetails details) =>
                  onTapDown(context, details),
            )));
  }
}
