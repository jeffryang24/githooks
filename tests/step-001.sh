#!/bin/sh

# run the default install
sh /var/lib/githooks/install.sh || exit 1

mkdir -p /tmp/test1 && cd /tmp/test1 || exit 1
git init || exit 1

# verify that the pre-commit is installed
grep -q 'https://github.com/rycus86/githooks' .git/hooks/pre-commit
