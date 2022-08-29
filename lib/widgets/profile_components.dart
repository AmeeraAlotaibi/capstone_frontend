import 'package:flutter/material.dart';

// AVATAR COMPONENT
class ProfileAvatar extends StatelessWidget {
  ProfileAvatar({Key? key, required this.avatar}) : super(key: key);

  final String avatar;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundColor: Colors.grey[400],
      backgroundImage: NetworkImage(avatar),
    );
  }
}

// a small container that houses the edit icon for the profile page
class EditButton extends StatelessWidget {
  EditButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipOval(
        child: Container(
          width: 30,
          height: 30,
          color: Theme.of(context).primaryColor,
          child: const Icon(
            Icons.edit,
            size: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// a simple horizontal line
class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 1,
      color: Colors.grey[200],
    );
  }
}

// ROW DISPLAYS HEIGHT, AGE, AND WEIGHT IN PROFILE
class DetailsRow extends StatelessWidget {
  DetailsRow({
    Key? key,
    required this.height,
    required this.age,
    required this.weight,
  }) : super(key: key);

  final String height;
  final String age;
  final String weight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Height",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${height}cm",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Container(
            width: 1,
            height: 40,
            color: Colors.grey[300],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Age",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${age}yrs",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Container(
            width: 1,
            height: 40,
            color: Colors.grey[300],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Weight",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${weight}kg",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TrainerProfileCard extends StatelessWidget {
  TrainerProfileCard({
    Key? key,
    required this.avatar,
  }) : super(key: key);
  final String avatar;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: Colors.grey[100],
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(avatar),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Amy Santiago",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "@GreatAmy",
                style: TextStyle(
                  color: Color(0xFF4c4c4c),
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
