import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String date;
  final bool isOnline;

  PatientCard({
    @required this.imageUrl,
    @required this.name,
    @required this.date,
    @required this.isOnline,
  })  : assert(imageUrl != null),
        assert(name != null),
        assert(date != null),
        assert(isOnline != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
                child: Image.asset(
                  "assets/profile.jpeg",
                  height: 48,
                  width: 48,
                  fit: BoxFit.cover,
                ),
              ),
              if (isOnline)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 0.0,
            ),
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.black38,
              size: 18,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
