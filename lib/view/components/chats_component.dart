import 'package:flutter/material.dart';

import '../../models/chat_model.dart';

class BuildChatItem extends StatelessWidget
{

  final DataModelChat model;
  const BuildChatItem ({required this.model,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 27.0,
              backgroundImage: NetworkImage(model.urlImage ?? ""),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 4,
                bottom: 4,
              ),
              child: CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.userName ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 9),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      model.userMessage ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    model.time ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
