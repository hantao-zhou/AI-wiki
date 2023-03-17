
#!/bin/bash

# Read each line of the chapter_names.txt file and create a folder for each chapter
while read chapter; do
  mkdir "$chapter"
done < chapter.txt
