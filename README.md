
# toll

This microservice takes a string of content and returns the token count using the `tiktoken` library. It is built using Flask.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)

## Prerequisites

- Python 3.x
- Flask
- tiktoken
- Poetry

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/haha-systems/toll.git
   cd toll
   ```

2. Install the required packages:

   ```bash
   pip install flask tiktoken poetry
   ```

3. Create a `requirements.txt` file:

   ```bash
   pip freeze > requirements.txt
   ```

## Usage

1. Run the Flask app:

   ```bash
   python main.py
   ```

2. Send a POST request to the `/token_count` endpoint with the content you want to tokenize. For example, using `curl`:

   ```bash
   curl -X POST -H "Content-Type: application/json" -d '{"content": "Your content here"}' http://127.0.0.1:4000/token_count
   ```

   You should get a JSON response with the token count:

   ```json
   {
     "token_count": 4
   }
   ```

## API Endpoints

### POST /token_count

- **Description**: Returns the token count for the provided content.
- **Request**:
  - **Headers**: `Content-Type: application/json`
  - **Body**: JSON object with a `content` field containing the string to be tokenized.
- **Response**:
  - **Success**: JSON object with a `token_count` field.
  - **Error**: JSON object with an `error` field and an appropriate error message.

#### Example Request

```json
{
  "content": "Your content here"
}
```

#### Example Response

```json
{
  "token_count": 4
}
```

## License

This project is licensed under the MIT License.
