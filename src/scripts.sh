#!/usr/bin/bash
find . -type f -name '*.puml' -print0 \
  | xargs -0 -n1 plantuml -tsvg
