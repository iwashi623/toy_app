#!/usr/bin/env bash
# exit on error
set -o errexit
bundle install
# /storageディレクトリを作成
mkdir -p /storage
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
