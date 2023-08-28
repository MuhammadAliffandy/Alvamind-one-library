import 'package:flutter/material.dart';

import '../../view/main/main_view.dart';
import '../../view/samples/accordion_samples_view.dart';
import '../../view/samples/attedance_card.dart';
import '../../view/samples/avatar_samples_view.dart';
import '../../view/samples/bar_chart_samples_view.dart';
import '../../view/samples/body_samples_view.dart';
import '../../view/samples/button_customer_bar_samples_view.dart';
import '../../view/samples/button_samples_view.dart';
import '../../view/samples/calendar_samples_view.dart';
import '../../view/samples/card_pinpoin_delivery_samples_view.dart';
import '../../view/samples/category_menu_samples_view.dart';
import '../../view/samples/chat_form_samples_view.dart';
import '../../view/samples/checkbox_samples_view.dart';
import '../../view/samples/chips_samples_view.dart';
import '../../view/samples/comment_and_review_list_samples_view.dart';
import '../../view/samples/complain_list_body_samples_view..dart';
import '../../view/samples/customer_list_body_samples_view.dart';
import '../../view/samples/dialog_samples_view.dart';
import '../../view/samples/divider_samples_view.dart';
import '../../view/samples/dotted_border_sample_view.dart';
import '../../view/samples/dropdown_samples_view.dart';
import '../../view/samples/employee_attedance_list_body_samples_viiew.dart';
import '../../view/samples/gallery_tabs_samples_view.dart';
import '../../view/samples/icon_button_samples_view.dart';
import '../../view/samples/illustration_state_samples_view.dart';
import '../../view/samples/image_samples_view.dart';
import '../../view/samples/input_field_samples_view.dart';
import '../../view/samples/input_search_samples_view.dart';
import '../../view/samples/item_cards_samples_view.dart';
import '../../view/samples/loading_samples_view.dart';
import '../../view/samples/logo_samples_view.dart';
import '../../view/samples/map_samples_view.dart';
import '../../view/samples/message_bubble_samples_view.dart';
import '../../view/samples/modal_samples_view.dart';
import '../../view/samples/notification_card_samples_view.dart';
import '../../view/samples/notification_list_body.dart';
import '../../view/samples/operasional_card_samples_view.dart';
import '../../view/samples/operasional_list_body_samples_view.dart';
import '../../view/samples/order_card_samples_view.dart';
import '../../view/samples/order_list_samples_view.dart';
import '../../view/samples/order_list_body_samples_view.dart';
import '../../view/samples/order_type_info_samples_view.dart';
import '../../view/samples/outlet_hero_category_samples_view.dart';
import '../../view/samples/outlet_hero_samples_view.dart';
import '../../view/samples/outlet_list_body_samples_view.dart';
import '../../view/samples/outlet_summmary_body_samples_view.dart';
import '../../view/samples/owner_outlet_card_samples_view.dart';
import '../../view/samples/payment_samples_view.dart';
import '../../view/samples/pin_point_samples_view.dart';
import '../../view/samples/progress_line_samples_view.dart';
import '../../view/samples/promo_card_samples_view.dart';
import '../../view/samples/radio_samples_view.dart';
import '../../view/samples/review_tabs_samples_view.dart';
import '../../view/samples/service_category_samples_view.dart';
import '../../view/samples/service_tabs_samples_view.dart';
import '../../view/samples/showcase_card_samples_view.dart';
import '../../view/samples/snackbar_samples_view.dart';
import '../../view/samples/statistic_square_samples_view.dart';
import '../../view/samples/status_card_complain.dart';
import '../../view/samples/steps_samples_view.dart';
import '../../view/samples/tab_detail_outlet_samples_view.dart';
import '../../view/samples/table_navigation_samples_view.dart';
import '../../view/samples/table_organism_samples_view.dart';
import '../../view/samples/table_samples_view.dart';
import '../../view/samples/table_with_export_filter_samples_view.dart';
import '../../view/samples/tabs_container_samples_view.dart';
import '../../view/samples/tags_organism_samples_view.dart';
import '../../view/samples/tags_samples_view.dart';
import '../../view/samples/terms_condition_list_samples_view.dart';
import '../../view/samples/time_field_samples_view.dart';
import '../../view/samples/toggle_samples_view.dart';
import '../../view/samples/tool_tip_menu_samples_view.dart';
import '../../view/samples/transaction_info_sample_view.dart';
import '../../view/samples/transaction_review_card_samples_view.dart';
import '../../view/samples/user_profile_container_employee_samples_view.dart';
import '../../view/samples/user_profile_summary_bodies_samples_view.dart';
import '../../view/samples/user_profille_container_samples_view.dart';
import '../../widget/organism/camera/camera.dart';
import '../../widget/organism/qr_code_scanner/qr_code_scanner.dart';

// App routes
class AppRoutes {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  AppRoutes._();

  static Map<String, WidgetBuilder> routes = {
    MainView.routeName: (context) => const MainView(),
    ButtonSamplesView.routeName: (context) => const ButtonSamplesView(),
    DialogSamplesView.routeName: (context) => const DialogSamplesView(),
    LoadingSamplesView.routeName: (context) => const LoadingSamplesView(),
    AvatarSamplesView.routeName: (context) => const AvatarSamplesView(),
    StatisticSquareSamplesView.routeName: (context) => const StatisticSquareSamplesView(),
    IconButtonSamplesView.routeName: (context) => const IconButtonSamplesView(),
    CategoryMenuSamplesView.routeName: (context) => const CategoryMenuSamplesView(),
    ChipsSamplesView.routeName: (context) => const ChipsSamplesView(),
    PinPointSamplesView.routeName: (context) => const PinPointSamplesView(),
    TagsSamplesView.routeName: (context) => const TagsSamplesView(),
    MessageBubbleSamplesView.routeName: (context) => const MessageBubbleSamplesView(),
    InputFieldSamplesView.routeName: (context) => const InputFieldSamplesView(),
    ToolTipMenuSamples.routeName: (context) => const ToolTipMenuSamples(),
    DividerSamplesView.routeName: (context) => const DividerSamplesView(),
    LogoSamplesView.routeName: (context) => const LogoSamplesView(),
    ImageSamplesView.routeName: (context) => const ImageSamplesView(),
    IllustrationStateSamplesView.routeName: (context) => const IllustrationStateSamplesView(),
    InputSearchFieldSamplesView.routeName: (context) => const InputSearchFieldSamplesView(),
    ProgressLineSamplesView.routeName: (context) => const ProgressLineSamplesView(),
    DropDownSamplesView.routeName: (context) => const DropDownSamplesView(),
    ItemCardsSamplesView.routeName: (context) => const ItemCardsSamplesView(),
    ToggleSamplesView.routeName: (context) => const ToggleSamplesView(),
    AccordionSamplesView.routeName: (context) => const AccordionSamplesView(),
    PaymentSamplesView.routeName: (context) => const PaymentSamplesView(),
    ModalPopupButtonSamplesView.routeName: (context) => const ModalPopupButtonSamplesView(),
    ButtonBarCustomerSamplesView.routeName: (context) => const ButtonBarCustomerSamplesView(),
    OrderCardSamplesView.routeName: (context) => const OrderCardSamplesView(),
    TermsConditionListSamplesView.routeName: (context) => const TermsConditionListSamplesView(),
    ServiceCategorySamplesView.routeName: (context) => const ServiceCategorySamplesView(),
    CommentAndReviewListSamplesView.routeName: (context) => const CommentAndReviewListSamplesView(),
    PromoCardSamplesView.routeName: (context) => const PromoCardSamplesView(),
    OwnerOutletCardSamplesView.routeName: (context) => const OwnerOutletCardSamplesView(),
    OrderTypeInfoSamplesView.routeName: (context) => const OrderTypeInfoSamplesView(),
    OrderListSamplesView.routeName: (context) => const OrderListSamplesView(),
    CardPinPoinDeliverySamplesView.routeName: (context) => const CardPinPoinDeliverySamplesView(),
    OperasionalCardSamplesView.routeName: (context) => const OperasionalCardSamplesView(),
    DottedBorderSamplesView.routeName: (context) => const DottedBorderSamplesView(),
    CheckboxSamplesView.routeName: (context) => const CheckboxSamplesView(),
    RadioSamplesView.routeName: (context) => const RadioSamplesView(),
    TableSamplesView.routeName: (context) => const TableSamplesView(),
    TableNavigationSamplesView.routeName: (context) => const TableNavigationSamplesView(),
    TransactionInfoSamplesView.routeName: (context) => const TransactionInfoSamplesView(),
    SnackbarSamplesView.routeName: (context) => const SnackbarSamplesView(),
    ShowcaseCardSamplesView.routeName: (context) => const ShowcaseCardSamplesView(),
    TransaksiReviewCardSamplesView.routeName: (context) => const TransaksiReviewCardSamplesView(),
    AttedanceCardSamplesView.routeName: (context) => const AttedanceCardSamplesView(),
    TimeFieldSamplesView.routeName: (context) => const TimeFieldSamplesView(),
    NotificationCardSamplesView.routeName: (context) => const NotificationCardSamplesView(),
    StatusCardComplainSamplesView.routeName: (context) => const StatusCardComplainSamplesView(),
    TagsOrganismSamplesView.routeName: (context) => const TagsOrganismSamplesView(),
    BodySamplesView.routeName: (context) => const BodySamplesView(),
    ChatFormSamplesView.routeName: (context) => const ChatFormSamplesView(),
    OutletHeroSamplesView.routeName: (context) => const OutletHeroSamplesView(),
    OutletHeroCategorySamplesView.routeName: (context) => const OutletHeroCategorySamplesView(),
    NotificationListBodySamplesView.routeName: (context) => const NotificationListBodySamplesView(),
    StepsSamplesView.routeName: (context) => const StepsSamplesView(),
    TabDetailOutletSamplesView.routeName: (context) => const TabDetailOutletSamplesView(),
    TableOrganismSamplesView.routeName: (context) => const TableOrganismSamplesView(),
    TableWithExportFilterSamplesView.routeName: (context) => const TableWithExportFilterSamplesView(),
    BarChartSamplesView.routeName: (context) => const BarChartSamplesView(),
    ReviewTabsSamplesView.routeName: (context) => const ReviewTabsSamplesView(),
    GalleryTabsSamplesView.routeName: (context) => const GalleryTabsSamplesView(),
    TabsContainerSamplesView.routeName: (context) => const TabsContainerSamplesView(),
    ServiceTabsSamplesView.routeName: (context) => const ServiceTabsSamplesView(),
    OrderListBodySamplesView.routeName: (context) => const OrderListBodySamplesView(),
    EmployeeAttedanceListBodySamplesView.routeName: (context) => const EmployeeAttedanceListBodySamplesView(),
    ComplainListBodySamplesView.routeName: (context) => const ComplainListBodySamplesView(),
    CustomerListBodySamplesView.routeName: (context) => const CustomerListBodySamplesView(),
    OperasionalListBodySamplesView.routeName: (context) => const OperasionalListBodySamplesView(),
    OutletSummaryBodySamplesView.routeName: (context) => const OutletSummaryBodySamplesView(),
    UserProfileSummaryBodySamplesView.routeName: (context) => const UserProfileSummaryBodySamplesView(),
    OutletListBodySamplesView.routeName: (context) => const OutletListBodySamplesView(),
    UserProfileContainerSamplesView.routeName: (context) => const UserProfileContainerSamplesView(),
    UserProfileContainerEmployeeSamplesView.routeName: (context) => const UserProfileContainerEmployeeSamplesView(),
    CalendarSamplesView.routeName: (context) => const CalendarSamplesView(),
    MapSamplesView.routeName: (context) => const MapSamplesView(),
    QRCodeScanner.routeName: (context) => const QRCodeScanner(),
    AppCamera.routeName: (context) => const AppCamera(),
  };
}
