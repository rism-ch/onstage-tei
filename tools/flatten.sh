mkdir -p flat
find CH* -mindepth 2 -type f -exec ln '{}' flat/ ';'
