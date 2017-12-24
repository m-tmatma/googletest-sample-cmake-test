#!/bin/sh

if [ "$(uname)" == 'Darwin' ]; then
    find . -name "tests*" -type f -perm +111 | xargs -n 1 -I {} sh -c '{} --gtest_list_tests'
    find . -name "tests*" -type f -perm +111 | xargs -n 1 -I {} sh -c '{}'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    find . -name "tests*" -type f -executable | xargs -n 1 -I {} sh -c '{} --gtest_list_tests'
    find . -name "tests*" -type f -executable | xargs -n 1 -I {} sh -c '{}'
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

