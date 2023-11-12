import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/data/models/freezed_models.dart';
import 'package:movie_review_app/modules/home_module/home_controller.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/widgets/custom_textfield.dart';
import 'package:movie_review_app/widgets/rounded_button.dart';
import 'package:movie_review_app/shared/functions.dart';

class AddMoviePage extends StatefulWidget {
  const AddMoviePage({Key? key}) : super(key: key);

  @override
  State<AddMoviePage> createState() => _AddMoviePageState();
}

class _AddMoviePageState extends State<AddMoviePage> {
  PlatformFile? poster;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _runtimeController = TextEditingController();
  final TextEditingController _genreController = TextEditingController();
  final TextEditingController _directorController = TextEditingController();
  final TextEditingController _writerController = TextEditingController();
  final TextEditingController _actorsController = TextEditingController();
  final TextEditingController _plotController = TextEditingController();
  final TextEditingController _languageController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    child: Text(
                      "Add Movies",
                      style: AppTheme.titleWhite(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: "Title",
              hintText: "The Avengers",
              controller: _titleController,
              keyboardType: TextInputType.name,
            ),
            Container(
              decoration: AppTheme.textFieldDecoration(),
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.only(top: 5, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      "Poster",
                      style: AppTheme.normalWhite()
                          .copyWith(color: AppTheme.textDark),
                    ),
                    TextButton(
                        onPressed: () => _handleAttachmentPressed(),
                        child: const Icon(
                          Icons.upload_file,
                          color: AppTheme.primaryColor,
                        )),
                  ]),
                  if (poster != null)
                    Text(
                      poster!.name,
                      style: AppTheme.normalWhite()
                          .copyWith(color: AppTheme.textDark),
                    ),
                ],
              ),
            ),
            CustomTextField(
              label: "Type",
              hintText: "Series ",
              controller: _typeController,
            ),
            CustomTextField(
              label: "Year",
              hintText: "1999",
              controller: _yearController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
              ],
            ),
            CustomTextField(
              label: "Runtime",
              hintText: "1:25:11",
              controller: _runtimeController,
              keyboardType: TextInputType.name,
            ),
            CustomTextField(
              label: "Genre",
              hintText: "Action",
              controller: _genreController,
              keyboardType: TextInputType.name,
            ),
            CustomTextField(
              label: "Director",
              hintText: "Tom Li",
              controller: _directorController,
              keyboardType: TextInputType.name,
            ),
            CustomTextField(
              label: "Actors",
              hintText: "Tom Curse, ",
              controller: _actorsController,
            ),
            CustomTextField(
              label: "Writer",
              hintText: "Anne Smith ",
              controller: _writerController,
            ),
            CustomTextField(
              label: "Language",
              hintText: "English ",
              controller: _languageController,
            ),
            CustomTextField(
              label: "Plot",
              hintText: "Write a simple description here ",
              controller: _plotController,
              maxLines: 5,
            ),
            const SizedBox(
              height: 40,
            ),
            RoundedButton(
                text: "Add",
                onPressed: () async {
                  if (_formKey.currentState!.validate() || poster != null) {
                    MovieModel data = MovieModel(
                        Title: _titleController.text,
                        Actors: _actorsController.text,
                        Director: _directorController.text,
                        Genre: _genreController.text,
                        Language: _languageController.text,
                        Plot: _plotController.text,
                        Runtime: _runtimeController.text,
                        Writer: _writerController.text,
                        Year: _yearController.text,
                        Type: _typeController.text,
                        Poster: poster!.path);
                    await Get.find<HomeController>().registerMovies(data);
                  } else {
                    toast("Error", "Please fill all required data");
                  }
                }),
            const SizedBox(
              height: 85,
            ),
          ]),
        ),
      ),
    ));
  }

  void _handleAttachmentPressed() {
    Get.bottomSheet(
      Container(
        decoration: AppTheme.movieCardDecoration()
            .copyWith(color: AppTheme.secondaryColor.withOpacity(0.8)),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: () {
                _handleFileSelection();
              },
              child: const Text(
                "Photo",
                style: TextStyle(color: AppTheme.primaryColor),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Cancel",
                  style: TextStyle(color: AppTheme.primaryColor)),
            ),
          ],
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    var result = await FilePicker.platform
        .pickFiles(type: FileType.image, allowMultiple: false);
    if (result != null) {
      setState(() {
        poster = result.files.single;
        Get.back();
      });
    }
  }
}
