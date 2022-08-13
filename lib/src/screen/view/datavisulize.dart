import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class datavisulize extends StatefulWidget {
  datavisulize({Key? key}) : super(key: key);

  @override
  State<datavisulize> createState() => _datavisulizeState();
}

class _datavisulizeState extends State<datavisulize> {
  List<productdata>? _chartData;
  TooltipBehavior? _tooltipBehavior;
  List<circularData>? _circularData;
  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    // TODO: implement initState
    _tooltipBehavior = TooltipBehavior(enable: true);
    _circularData = getCircularata();
    _chartData = getchartData();
    _zoomPanBehavior = ZoomPanBehavior(
        enablePinching: true,
        enableDoubleTapZooming: true,
        enablePanning: true,
        maximumZoomLevel: 0.7);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("data visulization".toUpperCase()),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  initialPage: 4,
                  autoPlay: true,
                ),
                items: [
                  Container(
                    child: SfCartesianChart(
                      tooltipBehavior: _tooltipBehavior,
                      zoomPanBehavior: _zoomPanBehavior,
                      title: ChartTitle(text: "product price".toUpperCase()),
                      legend: Legend(
                        isVisible: false,
                      ),
                      series: <SplineSeries>[
                        SplineSeries<productdata, int>(
                            name: "products",
                            dataSource: _chartData!,
                            xValueMapper: (productdata product, _) =>
                                product.product,
                            yValueMapper: (productdata product, _) =>
                                product.price,
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true),
                      ],
                      primaryXAxis: NumericAxis(
                          edgeLabelPlacement: EdgeLabelPlacement.shift),
                      primaryYAxis: NumericAxis(
                          numberFormat:
                              NumberFormat.simpleCurrency(decimalDigits: 0)),
                    ),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Container(
                    child: SfCircularChart(
                      tooltipBehavior: _tooltipBehavior,
                      title: ChartTitle(text: "product price".toUpperCase()),
                      legend: Legend(
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap),
                      series: <CircularSeries>[
                        PieSeries<circularData, String>(
                          dataSource: _circularData,
                          xValueMapper: (circularData data, _) => data.name,
                          yValueMapper: (circularData data, _) => data.count,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Container(
                    child: SfCircularChart(
                      tooltipBehavior: _tooltipBehavior,
                      title: ChartTitle(text: "product price".toUpperCase()),
                      legend: Legend(
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap),
                      series: <CircularSeries>[
                        DoughnutSeries<circularData, String>(
                          dataSource: _circularData,
                          xValueMapper: (circularData data, _) => data.name,
                          yValueMapper: (circularData data, _) => data.count,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Container(
                    child: SfCircularChart(
                      tooltipBehavior: _tooltipBehavior,
                      title: ChartTitle(text: "product price".toUpperCase()),
                      legend: Legend(
                          isVisible: true,
                          overflowMode: LegendItemOverflowMode.wrap),
                      series: <CircularSeries>[
                        RadialBarSeries<circularData, String>(
                            dataSource: _circularData,
                            xValueMapper: (circularData data, _) => data.name,
                            yValueMapper: (circularData data, _) => data.count,
                            // dataLabelSettings: DataLabelSettings(isVisible: true),
                            maximumValue: 4000),
                      ],
                    ),
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey,
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

List<productdata> getchartData() {
  final List<productdata> chartData = [
    productdata(2017, 25),
    productdata(2018, 28),
    productdata(2019, 40),
    productdata(2020, 50),
    productdata(2021, 10),
    productdata(2022, 3),
    productdata(2023, 2),
    productdata(2024, 5),
  ];
  return chartData;
}

List<circularData> getCircularata() {
  final List<circularData> circularchartdata = [
    circularData('africa', 1900),
    circularData('ethiopia', 200),
    circularData('gana', 2500),
    circularData('kongo', 1000),
    circularData('wichale', 600),
    circularData('botwana', 3600),
    circularData('anywhere', 4600),
  ];
  return circularchartdata;
}

class circularData {
  circularData(this.name, this.count);
  final String name;
  final int count;
}

class productdata {
  productdata(this.product, this.price);
  final int product;
  final int price;
}
