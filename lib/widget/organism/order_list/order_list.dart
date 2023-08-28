import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_divider.dart';
import '../../atom/app_pin_point.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_expansion_list_tile.dart';
import '../../molecule/app_icon_button.dart';
import '../accordion/accordion_question_card.dart';

class OrderList extends StatefulWidget {
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget? orderCard;

  final String? dateTime;
  final String? location;
  final String? title;
  final String? description;
  final List<BoxShadow>? boxShadow;
  final LatLng? mapTarget;
  final double? mapZoom;
  final MapType? mapType;
  final Set<Marker>? mapMarker;
  final Set<Circle>? mapCircle;
  final Function(LatLng)? onTapMap;

  const OrderList({
    super.key,
    this.padding,
    this.backgroundColor,
    this.orderCard,
    this.dateTime,
    this.description,
    this.location,
    this.title,
    this.boxShadow,
    this.mapTarget,
    this.mapType,
    this.mapZoom,
    this.mapMarker,
    this.mapCircle,
    this.onTapMap,
  });

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  bool isShow = false;
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  Set<Marker> markers = {};
  initMarkers() async {
    markers = {};

    markers.add(
      Marker(
        markerId: const MarkerId("1"),
        position: const LatLng(37.42796133580664, -122.085749655962),
        icon: await const AppPinPoint(
          image: 'https://picsum.photos/220/300',
        ).toBitmapDescriptor(),
        onTap: () {},
      ),
    );
    setState(() {});
  }

  Set<Circle> circles = Set.from([
    Circle(
      circleId: CircleId('1'),
      center: const LatLng(37.42796133580664, -122.085749655962),
      radius: 400,
      fillColor: AppColors.blueLv2.withOpacity(0.2),
      strokeWidth: 0,
    )
  ]);

  @override
  void initState() {
    initMarkers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
      boxShadow: widget.boxShadow ?? [],
      padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
      backgroundColor: widget.backgroundColor ?? AppColors.white,
      borderRadius: BorderRadius.circular(20),
      child: Column(
        children: [
          widget.orderCard ?? const SizedBox.shrink(),
          AppDivider(
            thickness: 2,
            color: AppColors.blackLv8,
            padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
          ),
          isShow == false
              ? const SizedBox.shrink()
              : Column(
                  children: [
                    textBetween('DateTime', widget.dateTime ?? 'Datetime'),
                    SizedBox(height: AppSizes.padding / 2),
                    textBetween('Location', widget.location ?? 'Location'),
                    SizedBox(height: AppSizes.padding),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GoogleMap(
                          zoomControlsEnabled: false,
                          mapType: widget.mapType ?? MapType.normal,
                          initialCameraPosition: CameraPosition(
                            target: widget.mapTarget ?? LatLng(37.42796133580664, -122.085749655962),
                            zoom: widget.mapZoom ?? 14.4746,
                          ),
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                          circles: circles,
                          onTap: widget.onTapMap ?? (value) {},
                          markers: widget.mapMarker ?? markers,
                        ),
                      ),
                    ),
                    SizedBox(height: AppSizes.padding),
                    AppCardContainer(
                      padding: EdgeInsets.all(0),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blackLv7.withOpacity(0.5),
                          offset: Offset(0, 4),
                          blurRadius: 60,
                          spreadRadius: 0,
                        )
                      ],
                      child: AppExpansionListTile(
                        title: widget.title ?? 'Alasan',
                        expand: true,
                        children: [
                          QuestionText(
                            text: widget.description ?? '',
                            color: AppColors.black,
                            backgroundColor: AppColors.transparent,
                            padding: const EdgeInsets.all(0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.padding),
                  ],
                ),
          AppIconButton(
            buttonColor: AppColors.transparent,
            padding: const EdgeInsets.all(4),
            icon: Icon(
              isShow == false ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
              size: 20,
            ),
            onTap: () {
              setState(() {
                isShow == false ? isShow = true : isShow = false;
              });
            },
          )
        ],
      ),
    );
  }

  Widget textBetween(String leftText, String rightText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: AppTextStyle.medium(
            size: 14,
            color: AppColors.blackLv4,
          ),
        ),
        Text(
          rightText,
          style: AppTextStyle.bold(
            size: 16,
            color: AppColors.black,
          ),
        )
      ],
    );
  }
}
