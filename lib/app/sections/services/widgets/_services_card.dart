part of '../services.dart';

class ServiceCard extends StatefulWidget {
  final ServicesUtils service;

  const ServiceCard({Key? key, required this.service}) : super(key: key);

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: isHover
          ? Motion.elevated(
              controller: widget.service.motionController,
              borderRadius: BorderRadius.circular(15),
              elevation: 50,
              translation: true,
              glare: true,
              shadow: true,
              child: Container(
                width:
                    Responsive.isTablet(context) || Responsive.isMobile(context)
                        ? 300
                        : 300,
                height:
                    Responsive.isTablet(context) || Responsive.isMobile(context)
                        ? 600
                        : 600,
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 30.0),
                decoration: BoxDecoration(
                  // gradient:  : grayBack,
                  gradient: theme.serviceCard,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [blackColorShadow],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      widget.service.icon,
                      height: Responsive.isDesktop(context) ? 60.0 : 50.0,
                    ),
                    Space.y(1.w)!,
                    Text(
                      widget.service.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: theme.textColor,
                        fontSize: Responsive.isDesktop(context) ? 20.0 : 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Space.y(1.w)!,
                    Text(
                      widget.service.description,
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        color: theme.textColor,
                        fontWeight: FontWeight.w200,
                        fontSize: Responsive.isDesktop(context) ? 13.0 : 12.0,
                      ),
                    ),
                    Space.y(2.w)!,
                    if (Responsive.isDesktop(context))
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: widget.service.tool
                              .map((e) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('🛠  '),
                                      Expanded(
                                        child: Text(e,
                                            style: TextStyle(
                                              color: theme.textColor,
                                              fontSize:
                                                  Responsive.isDesktop(context)
                                                      ? 13.0
                                                      : 12.0,
                                            )),
                                      ),
                                    ],
                                  ))
                              .toList()),
                    if (Responsive.isMobile(context) ||
                        Responsive.isTablet(context))
                      Expanded(
                        child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: widget.service.tool
                                .map((e) => Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('🛠  '),
                                        Expanded(
                                          child: Text(e,
                                              style: TextStyle(
                                                fontSize: Responsive.isDesktop(
                                                        context)
                                                    ? 13.0
                                                    : 12.0,
                                                color: isHover
                                                    ? whiteColor
                                                    : theme.textColor,
                                              )),
                                        ),
                                      ],
                                    ))
                                .toList()),
                      )
                  ],
                ),
              ),
            )
          : Container(
              width:
                  Responsive.isMobile(context) || Responsive.isTablet(context)
                      ? 300
                      : 300,
              height:
                  Responsive.isMobile(context) || Responsive.isTablet(context)
                      ? 600
                      : 600,
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              decoration: BoxDecoration(
                // gradient:  : grayBack,
                gradient: theme.serviceCard,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [blackColorShadow],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    widget.service.icon,
                    height: Responsive.isDesktop(context) ? 60.0 : 50.0,
                  ),
                  Space.y(1.w)!,
                  Text(
                    widget.service.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: theme.textColor,
                      fontSize: Responsive.isDesktop(context) ? 20.0 : 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Space.y(1.w)!,
                  Text(
                    widget.service.description,
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: theme.textColor,
                      fontWeight: FontWeight.w200,
                      fontSize: Responsive.isDesktop(context) ? 13.0 : 12.0,
                    ),
                  ),
                  Space.y(2.w)!,
                  if (Responsive.isDesktop(context))
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: widget.service.tool
                            .map((e) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('🛠  '),
                                    Expanded(
                                      child: Text(e,
                                          style: TextStyle(
                                            fontSize:
                                                Responsive.isDesktop(context)
                                                    ? 13.0
                                                    : 12.0,
                                            color: theme.textColor,
                                          )),
                                    ),
                                  ],
                                ))
                            .toList()),
                  if (Responsive.isMobile(context) ||
                      Responsive.isTablet(context))
                    Expanded(
                      child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: widget.service.tool
                              .map((e) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('🛠  '),
                                      Expanded(
                                        child: Text(e,
                                            style: TextStyle(
                                              fontSize:
                                                  Responsive.isDesktop(context)
                                                      ? 13.0
                                                      : 12.0,
                                              color: isHover
                                                  ? whiteColor
                                                  : theme.textColor,
                                            )),
                                      ),
                                    ],
                                  ))
                              .toList()),
                    )
                ],
              ),
            ),
    );
  }
}
