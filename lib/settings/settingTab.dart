import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news/my_provider.dart';
import 'package:news/settings/show_buttom_sheet_Theme.dart';
import 'package:news/settings/show_buttom_sheet_language.dart';
import 'package:provider/provider.dart';

class settingTab extends StatefulWidget {
  const settingTab({Key? key}) : super(key: key);

  @override
  State<settingTab> createState() => _settingTabState();
}

class _settingTabState extends State<settingTab> {
  @override
  Widget build(BuildContext context) {
     var proiver = Provider.of<providerApp>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              ShowBottomSheetLanguage();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.displayMedium,
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              ShowBottomSheetTheme();
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: Text(proiver.themeMode == ThemeMode.light
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.displayMedium,
                )),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  void ShowBottomSheetTheme() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowThemeBottomSheet();
        });
  }

  void ShowBottomSheetLanguage() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowLanguageBottomSheet();
        });
  }

}