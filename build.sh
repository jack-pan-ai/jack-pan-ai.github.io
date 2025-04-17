#!/bin/bash

# Create images directory if it doesn't exist
mkdir -p images

# Create the final index.html file by including all partials
cat templates/index.html > index.html.tmp

# Fix the paths in the template
sed -i "" "s|../partials/|partials/|g" index.html.tmp
sed -i "" "s|../papers/|partials/papers/|g" index.html.tmp

# Replace include directives with actual content
while grep -q "<!--#include file=" index.html.tmp; do
  # Get the first include line
  include_line=$(grep -m1 "<!--#include file=" index.html.tmp)
  
  # Extract the file path from the include directive
  file_path=$(echo "$include_line" | sed 's/.*file="\(.*\)".*$/\1/')
  
  # Create a temporary file with the line removed
  grep -v "$include_line" index.html.tmp > temp.html
  
  # Find the line number where the include was
  line_num=$(grep -n "$include_line" index.html.tmp | cut -d: -f1)
  
  # Split the file at that point
  head -n $(($line_num - 1)) index.html.tmp > part1.html
  tail -n +$(($line_num + 1)) index.html.tmp > part2.html
  
  # Combine the parts with the included file content in between
  cat part1.html > index.html.tmp
  cat "$file_path" >> index.html.tmp
  cat part2.html >> index.html.tmp
  
  # Clean up temporary files
  rm temp.html part1.html part2.html
done

# Move the temporary file to the final file
mv index.html.tmp index.html

echo "Website built successfully!" 