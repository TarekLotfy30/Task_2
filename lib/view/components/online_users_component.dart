import 'package:flutter/material.dart';

import '../../models/online_model.dart';

class BuildOnlineUsersItem extends StatelessWidget {
  final DataModelOnline model;

  const BuildOnlineUsersItem({required this.model, super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  model.urlImage??'',
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 3,
                  bottom: 3,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Text(
            model.userName ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

