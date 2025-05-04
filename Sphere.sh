#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")
ORIGINAL_CURL=$(<$SCRIPT_DIR/Request.txt)

print_with_glow() {
    local text="$1"
    if command -v glow >/dev/null 2>&1; then
        echo -ne "\r$text\n" | glow -
    else
        echo -ne "\r$text\n"
    fi
}

process_json() {
    local json="$1"
    local delta=$(echo "$json" | jq -r 'select(.delta != null) | .delta')
    if [[ -n "$delta" ]]; then
        print_with_glow "$delta..."
    fi

    local value=$(echo "$json" | jq -r 'select(.message.value != null) | .message.value')
    if [[ -n "$value" ]]; then
        print_with_glow "$value"
    fi
}


while :; do
  read -p "Введите Ваш вопрос: " query
  export YOU_REQUEST="$query"
  CURRENT_CURL=$(echo "$ORIGINAL_CURL -N -s"  | envsubst)

	eval "$CURRENT_CURL" | while IFS= read -r line; do
      #  Ищем строки, начинающиеся с 'data:'
      if [[ $line == data:* ]]; then
          process_json "${line#data:}"
      fi
    done
		echo -e "\n-------------------------\n"
done
