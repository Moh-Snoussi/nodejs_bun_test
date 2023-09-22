<!DOCTYPE html>
<html>
<head>
    <title>{{ $app_name }}</title>
</head>
<body>
    <h1>{{ $app_name }}</h1>
    <ul>
        @foreach ($questions as $question)
            <li>{{ $question['question_text'] }}</li>
        @endforeach
    </ul>
</body>
</html>
