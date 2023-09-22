<?php
use eftec\bladeone\BladeOne;

require 'vendor/autoload.php';

try {
    require 'db.php';
    $questions = getQuestions();

    $blade = new BladeOne(__DIR__ . '/views', __DIR__ . '/compiled', BladeOne::MODE_FAST);

    // Render the BladeOne template
    echo $blade->run('questions', [
        'questions' => $questions,
        'app_name' => 'PHP Application', // Customize this value as needed
    ]);
} catch (PDOException $e) {
    http_response_code(500);
    echo 'Internal server error';
}
