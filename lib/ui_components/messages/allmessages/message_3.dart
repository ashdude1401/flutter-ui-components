import 'package:flutter/material.dart';

class Message_3 extends StatelessWidget {
  Message_3({required this.message});
  String? message;
  final url =
      "http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQkkBqUXNEFSjdHBi-acox9SkGkMHIH8zbjKWnCSxzZBxwLSzx2jXu9cFdNrZlbxNuIiYqfD5d2tHkWoUU";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                  child: CircleAvatar(
                    // borderRadius: BorderRadius.circular(300.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Image.network(
                        url,
                        height: 100,
                        width: 60,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                    ),
                    child: Text(
                      "${message}",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
                CustomPaint(painter: CustomShape(Color(0xff005F99)!)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomPainter {
  final Color bgColor;

  CustomShape(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
