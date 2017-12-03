#!/bin/sh

find . -name "tests*" -type f -perm +111 | xargs -n 1 -I {} sh -c '{} --gtest_list_tests'
find . -name "tests*" -type f -perm +111 | xargs -n 1 -I {} sh -c '{}'
