import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:file_picker/file_picker.dart';
import '3rd.dart';
import '1st.dart';

class BuyNow2 extends StatefulWidget {
  const BuyNow2({Key? key}) : super(key: key);

  @override
  State<BuyNow2> createState() => _BuyNow2State();
}

class _BuyNow2State extends State<BuyNow2> {
  Widget _buildCircularIcon(String imagePath, String label) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade500, width: 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                imagePath,
                height: 25,
                width: 25,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 152.0,
      height: 1.0,
      color: Colors.grey.shade500,
    );
  }

  final _controller = quill.QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Image.asset(
              "images/Pinion-Partners-Logo.png",
              width: 300,
              height: 100,
            ),
          ),
          SizedBox(height: -10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              "Press Release Submission System",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCircularIcon("images/document.png", "Title"),
              _buildDivider(),
              _buildCircularIcon("images/paper.png", "PR Content"),
              _buildDivider(),
              _buildCircularIcon("images/target.png", "Targeting"),
              _buildDivider(),
              _buildCircularIcon("images/calendar.png", "Schedule"),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Text(
              "Step 3",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Text(
              "Order Customization",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Color.fromARGB(255, 236, 237, 238),
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                quill.QuillToolbar.basic(controller: _controller),
                Container(
                  height: 400,
                  width: 600,
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
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 60, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen1(),
                      ),
                    );
                  },
                  child: Text(
                    "Previous",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 26.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Thirdpage(),
                      ),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 253, 253),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 66, 58, 183),
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 26.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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