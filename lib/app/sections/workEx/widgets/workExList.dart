import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

workexInfoStartChild(String jobTitle, String companyName, List<String> bullets,
    bool isLast, bool isFirst, String date, DecorationImage imageAsset) {
  return TimelineTile(
    indicatorStyle: IndicatorStyle(
      width: 75.0,
      height: 75.0,
      padding: const EdgeInsets.all(8),
      indicator: Container(
        width: 75.0,
        height: 75.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 4.0,
            color: Colors.white,
          ),
        ),
        child: Container(
          width: 75.0,
          height: 75.0,
          decoration: BoxDecoration(
              color: Colors.grey, shape: BoxShape.circle, image: imageAsset),
          // child: imageAsset,
        ),
      ),
    ),
    isFirst: isFirst,
    isLast: isLast,
    alignment: TimelineAlign.center,
    endChild: Text(
      date,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    startChild: Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF223264),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.white,
        ),
      ),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          Text(
            companyName,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: List.generate(bullets.length, (index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '\u2022',
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      bullets[index],
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        height: 1.55,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    ),
  );
}

workexInfoEndChild(String jobTitle, String companyName, List<String> bullets,
    bool isLast, bool isFirst, String date, DecorationImage imageAsset) {
  return TimelineTile(
    indicatorStyle: IndicatorStyle(
      width: 75.0,
      height: 75.0,
      padding: const EdgeInsets.all(8),
      indicator: Container(
        width: 75.0,
        height: 75.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 4.0,
            color: Colors.white,
          ),
        ),
        child: Container(
          width: 75.0,
          height: 75.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            image: imageAsset,
          ),
          // child: imageAsset,
        ),
      ),
    ),
    isFirst: isFirst,
    isLast: isLast,
    alignment: TimelineAlign.center,
    startChild: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          date,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    endChild: Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF223264),
        // gradient: Theme.of(context).serviceCard,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.white,
        ),
      ),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          Text(
            companyName,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: List.generate(bullets.length, (index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '\u2022',
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      bullets[index],
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        height: 1.55,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    ),
  );
}

workexInfoTag(String jobTitle, String companyName, List<String> bullets,
    bool isLast, bool isFirst, String date, DecorationImage imageAsset) {
  return TimelineTile(
    lineXY: 0.1,
    indicatorStyle: IndicatorStyle(
      width: 65.0,
      height: 65.0,
      padding: const EdgeInsets.all(8),
      indicator: Container(
        width: 65.0,
        height: 65.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 4.0,
            color: Colors.white,
          ),
        ),
        child: Container(
          width: 65.0,
          height: 65.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            image: imageAsset,
          ),
        ),
      ),
    ),
    isFirst: isFirst,
    isLast: isLast,
    alignment: TimelineAlign.start,
    endChild: Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF223264),
        // gradient: Theme.of(context).serviceCard,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.white,
        ),
      ),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          Text(
            companyName,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14.0,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: List.generate(bullets.length, (index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '\u2022',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      bullets[index],
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        height: 1.55,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    ),
  );
}
