#!/bin/bash -eu

function main() {
  local cwd
  cwd="${1}"

  chmod +x tool-om/om-linux
  local om="tool-om/om-linux"

    $om --target "${OPSMAN_URI}" \
        --skip-ssl-validation \
        --username "${OPSMAN_USERNAME}" \
        --password "${OPSMAN_PASSWORD}" \
}

main "${PWD}"
