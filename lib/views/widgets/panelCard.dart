import 'package:flutter/material.dart';
import 'package:nssapp/models/volunteerModel.dart';

class PanelCard extends StatefulWidget {
  final VolunteerModel volunteerModel;
  const PanelCard({Key? key, required this.volunteerModel}) : super(key: key);

  @override
  _PanelCardState createState() => _PanelCardState();
}

class _PanelCardState extends State<PanelCard> {
  @override
  Widget build(BuildContext context) {
    var children2 = [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.volunteerModel.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Text(
            widget.volunteerModel.role,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
      Icon(Icons.phone),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
      child: Container(
        // width: 180.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Color(0xff00bcd4),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                widget.volunteerModel.name[0],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: children2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
