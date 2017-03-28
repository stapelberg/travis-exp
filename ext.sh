#!/bin/bash

# complete the previous command
travis_time_finish

travis_cmd 'echo here i am, nesting' --echo --timing
travis_result $?

travis_time_start
