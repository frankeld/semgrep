// ERROR:
$var->test1()->test2()->test3()->test_made();

// ERROR:
$var->test1()->test_made();

$eof = <<<EOF
// ERROR:
{$var->$var->test1()->test_made()}
EOF;

$eof = <<<EOF
// TODO: This should be a valid match but is not.
{$var->test1()->test_made()}
EOF;

$var->test_made();

$var->test->test_made(); // `test` is not a method call
                         // so it will not match

$test->test1()->test_made();
