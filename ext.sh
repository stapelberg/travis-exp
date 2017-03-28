#!/bin/bash

# complete the previous command
travis_time_finish
travis_result 0
local _old_travis_cmd=$TRAVIS_CMD

travis_fold start nesting
travis_cmd 'echo here i am, nesting' --echo --timing
travis_result $?
travis_fold end nesting

travis_fold start second
travis_cmd 'echo second command' --echo --timing
travis_result $?
travis_fold end second

TRAVIS_CMD=$_old_travis_cmd
travis_time_start
