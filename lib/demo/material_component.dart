import 'package:flutter/material.dart';
import 'package:flutter_app/demo/button_demo.dart';
import 'package:flutter_app/demo/floating_action_button_demo.dart';
import 'package:flutter_app/demo/popup_menu_button_demo.dart';
import 'package:flutter_app/demo/form_demo.dart';
import 'package:flutter_app/demo/checkbox_demo.dart';
import 'package:flutter_app/demo/radio_demo.dart';
import 'package:flutter_app/demo/switch_demo.dart';
import 'package:flutter_app/demo/slider_demo.dart';
import 'package:flutter_app/demo/date_time_demo.dart';
import 'package:flutter_app/demo/simple_dialog_demo.dart';
import 'package:flutter_app/demo/bottom_sheet_demo.dart';
import 'package:flutter_app/demo/snack_bar_demo.dart';
import 'package:flutter_app/demo/expansion_panel_demo.dart';
import 'package:flutter_app/demo/chip_demo.dart';
import 'package:flutter_app/demo/data_table_demo.dart';
import 'package:flutter_app/demo/paginated_data_table_demo.dart';
import 'package:flutter_app/demo/card_demo.dart';
import 'package:flutter_app/demo/stepper_demo.dart';

class MaterialComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(
              '原生组件',
            ),
            elevation: 0.0,
          ),
          body: ListView(
            children: <Widget>[
              ListItemWidget(title: 'FloatingActionButton',page: FloatingActionButtonDemo()),
              ListItemWidget(title: 'Button',page: ButtonDemo()),
              ListItemWidget(title: 'PopupMenuButtonDemo',page: PopupMenuButtonDemo()),
              ListItemWidget(title: 'FormDemo',page: FormDemo()),
              ListItemWidget(title: 'CheckBoxDemo',page: CheckBoxDemo()),
              ListItemWidget(title: 'RadioDemo',page: RadioDemo()),
              ListItemWidget(title: 'SwitchDemo',page: SwitchDemo()),
              ListItemWidget(title: 'SliderDemo',page: SliderDemo()),
              ListItemWidget(title: 'DateTimeDemo',page: DateTimeDemo()),
              ListItemWidget(title: 'SimpleDislogDemo',page: SimpleDialogDemo()),
              ListItemWidget(title: 'BottomSheetDemo',page: BottomSheetDemo()),
              ListItemWidget(title: 'SnackBarDemo',page: SnackBarDemo()),
              ListItemWidget(title: 'ExpansionPanelDemo',page: ExpansionPanelDemo()),
              ListItemWidget(title: 'ChipDemo',page: ChipDemo()),
              ListItemWidget(title: 'DataTableDemo',page: DataTableDemo()),
              ListItemWidget(title: 'PaginatedDataTableDemo',page: PaginatedDataTableDemo()),
              ListItemWidget(title: 'CardDemo',page: CardDemo()),
              ListItemWidget(title: 'StepperDemo',page: StepperDemo()),
            ],
          ),
        );
  }
}

class ListItemWidget extends StatelessWidget {

  final String title;

  final Widget page;

  ListItemWidget({this.title,this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder:
              (context) => page,
          )
        );
      },
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '_WidgetDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ],
            ),
          ],
        ),
      ),
    );
  }
}



