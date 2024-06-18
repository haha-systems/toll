from flask import Flask, request, jsonify
import tiktoken

app = Flask(__name__)

# Initialize tiktoken tokenizer
tokenizer = tiktoken.get_encoding("cl100k_base")


@app.route('/token_count', methods=['POST'])
def token_count():
    content = request.json.get('content', '')
    if not content:
        return jsonify({'error': 'No content provided'}), 400

    # Tokenize the content
    tokens = tokenizer.encode(content)
    token_count = len(tokens)

    return jsonify({'token_count': token_count})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4000)
