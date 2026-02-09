import 'package:flutter/material.dart';

class AnswerInputField extends StatefulWidget {
  final String initialValue;
  final ValueChanged<String> onChanged;
  final VoidCallback onSubmitted;
  final String hintText;

  const AnswerInputField({
    super.key,
    this.initialValue = '',
    required this.onChanged,
    required this.onSubmitted,
    this.hintText = 'Опишите, что делает этот код...',
  });

  @override
  State<AnswerInputField> createState() => _AnswerInputFieldState();
}

class _AnswerInputFieldState extends State<AnswerInputField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ваше объяснение:',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _controller,
          maxLines: 10,
          minLines: 3,
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            suffixIcon: IconButton(
              icon: const Icon(Icons.send),
              onPressed: _submitAnswer,
              tooltip: 'Отправить',
            ),
          ),
          onChanged: widget.onChanged,
        ),
        const SizedBox(height: 8),
        Text(
          'Постарайтесь описать не только что делает код, но и почему он написан именно так',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  void _submitAnswer() {
    if (_controller.text.trim().isNotEmpty) {
      widget.onSubmitted();
    }
  }
}
