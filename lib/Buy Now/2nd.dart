import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:file_picker/file_picker.dart';

class BuyNow2 extends StatefulWidget {
  const BuyNow2({Key? key}) : super(key: key);

  @override
  State<BuyNow2> createState() => _BuyNow2State();
}

class _BuyNow2State extends State<BuyNow2> {
  final _controller = quill.QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Press Release Submission System",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              decoration: TextDecoration.none,
              color: Colors.black),
        ),
//task bar part
//task bar part end

        Text(
          "Step 2",
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 14.0,
              decoration: TextDecoration.none,
              color: Colors.black),
        ),

        // Row(
        //   children: [
        //     Text("PDF/DOC"),
        //     Checkbox(
        //       value: false,
        //       onChanged: (value) {IgnorePointer();},
        //     )
        //   ],
        // ),

        Container(
          color: Color.fromARGB(255, 236, 237, 238),
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              quill.QuillToolbar.basic(controller: _controller),
              Container(
                height: 400,
                width: 300,
                color: Color.fromARGB(255, 223, 225, 225),
                padding: EdgeInsets.all(10.0),
                child: Directionality(
                  textDirection: TextDirection.ltr, // Adjust this as needed
                  child: quill.QuillEditor.basic(
                    controller: _controller,
                    readOnly: false,
                  ),
                ),
              )
            ],
          ),
        )

        // RichTextEditor(),
      ],
    );
  }
}

//text editor
class RichTextEditor extends StatefulWidget {
  @override
  _RichTextEditorState createState() => _RichTextEditorState();
}

class _RichTextEditorState extends State<RichTextEditor> {
  final quill.QuillController _controller = quill.QuillController.basic();

  void _pickAndInsertFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc'],
    );

    if (result != null) {
      final filePath = result.files.single.path!;
      final fileName = result.files.single.name;

      final quill.Delta delta = quill.Delta()
        ..insert('[$fileName]($filePath)', {
          'attributes': {'link': filePath}, // Add the link attribute
        });

      _controller.compose(delta, 'user' as TextSelection,
          _controller.document.length as quill.ChangeSource);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: quill.QuillEditor(
              focusNode: FocusNode(canRequestFocus: false),
              scrollable: true,
              scrollController: ScrollController(initialScrollOffset: 5.0),
              controller: _controller,
              readOnly: false,
              autoFocus: true,
              expands: true,
              padding: EdgeInsets.all(8.0),
              placeholder: 'Start typing...',
              onLaunchUrl: (url) {
                // Handle URL launching (e.g., open a web page)
              },
            ),
          ),
          // Add additional buttons for formatting here (e.g., bold, italic, align)
          // Example:
          ElevatedButton(
            onPressed: () {
              _controller.formatSelection(quill.Attribute.bold);
            },
            child: Text('Bold'),
          ),
        ],
      ),
    );
  }
}
//text editor