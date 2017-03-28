#!/bin/bash

# complete the previous command
travis_time_finish

travis_fold start nesting
travis_cmd 'echo here i am, nesting' --echo --timing
travis_result $?
travis_fold end nesting

travis_fold start second
travis_cmd 'echo second command' --echo --timing
travis_result $?
travis_fold end second

travis_time_start
