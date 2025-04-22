#!/usr/bin/env bash
# exit on error
set -o errexit
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
# データベースディレクトリの作成
mkdir -p /var/data
bundle exec rails db:migrate
