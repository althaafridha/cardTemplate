library card_template;

import 'package:flutter/material.dart';

class CardTemplate extends StatefulWidget {
  final double height;
  final double width;
  final ImageProvider<Object> image;
  final String title;
  final String description;
  final EdgeInsetsGeometry? padding;

  const CardTemplate(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.padding,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  State<CardTemplate> createState() => _CardTemplateState();
}

class _CardTemplateState extends State<CardTemplate> {
  @override
  Widget build(BuildContext context) {
    return
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: widget.image,
              fit: BoxFit.cover,
            ),
          ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                widget.description,
                style: const TextStyle(color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        )
        );
  }
}
