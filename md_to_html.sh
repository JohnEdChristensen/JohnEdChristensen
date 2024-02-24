#!/bin/bash
#npm isntall -g liverserver
live-server &

convert_to_html() {
    pandoc --css=style.css -s -f markdown --metadata pagetitle="John Christensen" --to=html5 README.md -o index.html
    echo "Conversion complete. HTML updated."
}

# Initial conversion
convert_to_html

# Watch for modifications in README.md and style.css
while true; do
    inotifywait -e modify README.md style.css
    convert_to_html
done
