#!/bin/bash
pandoc --css=style.css -s -f markdown --metadata pagetitle="John Christensen" --to=html5 README.md -o index.html
