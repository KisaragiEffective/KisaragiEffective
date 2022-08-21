#!/bin/bash
if [[ "$PREPROCESSOR_VERSION" == "" ]]; then
  echo "\$PREPROCESSOR_VERSION must be set"
  exit 1
else
  echo "Extracting: $PREPROCESSOR_VERSION"
fi

wget --clobber "https://github.com/KisaragiEffective/markdown-template-preprocessor/releases/download/${PREPROCESSOR_VERSION}/markdown-template-preprocessor_${PREPROCESSOR_VERSION}_x86_64-unknown-linux-musl.tar.gz"
if [[ "$(curl -L "https://github.com/KisaragiEffective/markdown-template-preprocessor/releases/download/${PREPROCESSOR_VERSION}/markdown-template-preprocessor_${PREPROCESSOR_VERSION}_x86_64-unknown-linux-musl.tar.gz.sha256sum")" == "$(sha256sum "markdown-template-preprocessor_${PREPROCESSOR_VERSION}_x86_64-unknown-linux-musl.tar.gz" | sed 's/  / /g')" ]]; then
  echo "sha256sum: OK"
  tar xzf "markdown-template-preprocessor_${PREPROCESSOR_VERSION}_x86_64-unknown-linux-musl.tar.gz"
  rm "markdown-template-preprocessor_${PREPROCESSOR_VERSION}_x86_64-unknown-linux-musl.tar.gz"
else
  echo "sha256sum does not match!!"
fi
