import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/widget/organism/tags_organism.dart/tags_organism.dart';
import 'package:flutter/material.dart';

import 'sample_wrapper.dart';

class TagsOrganismSamplesView extends StatefulWidget {
  const TagsOrganismSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-tags-organism-samples';

  @override
  State<TagsOrganismSamplesView> createState() => _TagsOrganismSamplesViewState();
}

class _TagsOrganismSamplesViewState extends State<TagsOrganismSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tag Organism Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tagOrgansimList1(),
            tagOrgansimOutlet(),
            tagOrganismSorting(),
            tagOrganismGender(),
            tagOrganismTime(),
            tagOrganismStar(),
            tagOrganismOrderType(),
            tagOrganismCashFlow(),
            tagOrganismInbox(),
            tagOrganismOutlet(),
            tagOrganismEmployeePosition(),
            tagOrganismEmployeePresence(),
            tagOrganismCity(),
            tagOrganismOrderStatusByCourier(),
            tagOrganismOrderStatusByCustomerOwner(),
            tagOrganismUserStatus(),
            tagOrganismTimeRange(),
            tagOrganismInventory(),
            tagOrganismRequestSend(),
            tagOrganismHistory(),
          ],
        ),
      ),
    );
  }

  int selected = -1;

  Widget tagOrgansimList1() {
    return SampleWrapper(
      title: 'Tags Organism List 1',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Pakaian',
          'Alat tidur',
          'Karpet',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrgansimOutlet() {
    return SampleWrapper(
      title: 'Tags Organism Outlet',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Reguler',
          'Premium',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismSorting() {
    return SampleWrapper(
      title: 'Tags Organism Sorting',
      widget: TagsOrganism(
        listChips: const [
          'A - Z',
          'Z - A',
          'Terbaru',
          'Terlama',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismGender() {
    return SampleWrapper(
      title: 'Tags Organism Gender',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Laki-laki',
          'Perempuan',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismTime() {
    return SampleWrapper(
      title: 'Tags Organism Time',
      widget: TagsOrganism(
        listChips: const [
          '09:00 AM',
          '09:00 AM',
          '09:00 AM',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismStar() {
    return SampleWrapper(
      title: 'Tags Organism Star',
      widget: TagsOrganism(
        leftIcon: Icons.star_rounded,
        listChips: const [
          'Semua',
          '5',
          '4',
          '3',
          '2',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismOrderType() {
    return SampleWrapper(
      title: 'Tags Organism Order Type',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Drop Service',
          'Self Service',
          'Delivery',
          'Home Service',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismCashFlow() {
    return SampleWrapper(
      title: 'Tags Organism CashFlow',
      widget: TagsOrganism(
        listChips: const [
          'Pemasukan',
          'Pengeluaran',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismInbox() {
    return SampleWrapper(
      title: 'Tags Organism Inbox',
      widget: TagsOrganism(
        listChips: const [
          'Semmua',
          'Chat Pemesanan',
          'Diskusi Komplain',
          'Customer Service'
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismOutlet() {
    return SampleWrapper(
      title: 'Tags Organism Outlet',
      widget: TagsOrganism(
        listChips: const [
          'Toko Laundry',
          'Layanan Laundry',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismEmployeePosition() {
    return SampleWrapper(
      title: 'Tags Organism Employee Position',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Kasir',
          'Kurir',
          'Produksi',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismEmployeePresence() {
    return SampleWrapper(
      title: 'Tags Organism Employee Presence',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Terlambat',
          'Masuk Kerja',
          'Tidak Masuk Kerja',
          'Izin',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismCity() {
    return SampleWrapper(
      title: 'Tags Organism City',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Surabaya',
          'Jakarta',
          'Malang',
          'Semarang',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismOrderStatusByCourier() {
    return SampleWrapper(
      title: 'Tags Organism Order Status By Courier',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Ambil',
          'Antar',
          'Selesai',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismOrderStatusByCustomerOwner() {
    return SampleWrapper(
      title: 'Tags Organism Order Status By Customer Owner',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Menunggu Konfirmasi',
          'Ambil',
          'Proses',
          'Antar',
          'Selesai',
          'Komplain',
          'Batal'
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismInventory() {
    return SampleWrapper(
      title: 'Tags Organism Inventory',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Pewangi',
          'Sabun',
          'Alat Bandu',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismTimeRange() {
    return SampleWrapper(
      title: 'Tags Organism TimeRange',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Hari ini',
          '7 Hari',
          '1 Bulan',
          '1 Tahun',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismUserStatus() {
    return SampleWrapper(
      title: 'Tags Organism UserStatus',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Aktif',
          'Nonaktif',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismRequestSend() {
    return SampleWrapper(
      title: 'Tags Organism RequestSend',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Pengiriman',
          'Permintaan',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }

  Widget tagOrganismHistory() {
    return SampleWrapper(
      title: 'Tags Organism RequestSend',
      widget: TagsOrganism(
        listChips: const [
          'Semua',
          'Pengiriman',
          'Permintaan',
          'Penggunaan',
          'Pengembalian',
          'Penjualan',
        ],
        selected: selected,
        onTap: (value) {
          // TODO
        },
      ),
    );
  }
}
