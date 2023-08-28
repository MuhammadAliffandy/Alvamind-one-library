import 'dart:async';

import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:alvamind_library/widget/atom/app_image.dart';
import 'package:alvamind_library/widget/molecule/app_button.dart';
import 'package:alvamind_library/widget/organism/service_category_menu/service_category_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

import '../../../app/theme/app_colors.dart';
import '../../atom/app_pin_point.dart';

class PublicSummaryBody extends StatefulWidget {
  final String termsCondtionText;
  final List<String>? images;
  final String? countImages;
  final String? addressText;
  final Widget? map;
  final List<Widget> childrenReview;
  final LatLng? mapTarget;
  final double? mapZoom;
  final MapType? mapType;
  final Set<Marker>? mapMarker;
  final Set<Circle>? mapCircle;
  final Function(LatLng)? onTapMap;
  final void Function() onTapGalleryMore;
  final void Function() onTapReviewMore;

  const PublicSummaryBody({
    required this.termsCondtionText,
    required this.childrenReview,
    required this.onTapGalleryMore,
    required this.onTapReviewMore,
    this.map,
    this.images,
    this.countImages,
    this.addressText,
    this.mapTarget,
    this.mapType,
    this.mapZoom,
    this.mapMarker,
    this.mapCircle,
    this.onTapMap,
  });

  @override
  State<PublicSummaryBody> createState() => _PublicSummaryBodyState();
}

class _PublicSummaryBodyState extends State<PublicSummaryBody> {
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
    return Column(
      children: [
        headline(
          'Syarat dan Ketentuan Toko',
          [
            Text(
              widget.termsCondtionText,
              style: AppTextStyle.medium(
                size: 16,
              ),
            )
          ],
        ),
        headline(
          'Layanan Laundry',
          [
            ServiceCategory()
          ],
        ),
        headlineWithMore(
          'Gallery',
          widget.onTapGalleryMore,
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(3, (i) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.blueLv5,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  widget.images?[i] ?? randomImage,
                                ))),
                        padding: EdgeInsets.all(
                          AppSizes.padding * 3.2,
                        ),
                      ),
                      i == 2
                          ? Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(AppSizes.padding * 3.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.blackLv1.withOpacity(0.5),
                                  ),
                                ),
                                Text(
                                  widget.countImages ?? '20+',
                                  style: AppTextStyle.bold(
                                    size: 20,
                                    color: AppColors.white,
                                  ),
                                )
                              ],
                            )
                          : const SizedBox.shrink(),
                    ],
                  );
                }),
              ],
            )
          ],
        ),
        headline(
          'Lokasi',
          [
            Row(
              children: [
                const Icon(
                  Icons.location_on_rounded,
                  color: AppColors.primary,
                ),
                SizedBox(
                  width: AppSizes.padding / 2,
                ),
                Text(
                  widget.addressText ?? '',
                  style: AppTextStyle.medium(
                    size: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.padding),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.blueLv5,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
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
          ],
        ),
        headlineWithMore(
          'Ulasan',
          widget.onTapReviewMore,
          [
            ...widget.childrenReview,
          ],
        ),
      ],
    );
  }

  Widget headline(String text, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppTextStyle.bold(
            size: 20,
            color: AppColors.black,
          ),
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        ...children,
        SizedBox(
          height: AppSizes.padding * 1.5,
        ),
      ],
    );
  }

  Widget headlineWithMore(
    String text,
    void Function() onTap,
    List<Widget> children,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppTextStyle.bold(
                size: 20,
                color: AppColors.black,
              ),
            ),
            AppButton(
              text: 'Lihat Semua',
              fontSize: 14,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: AppSizes.padding / 3),
              buttonColor: AppColors.transparent,
              textColor: AppColors.primary,
              onTap: onTap,
            )
          ],
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        ...children,
        SizedBox(
          height: AppSizes.padding * 1.5,
        ),
      ],
    );
  }
}
