
# Good fonts to install

1. Monaspace from github
3. cascadia from microsoft
4. comic shanns

# Configurations

## editor settings to make smoothie

"editor.fontLigatures": "'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'calt', 'dlig'",


## installation

**installation monaspace**

```
brew tap homebrew/cask-fonts
brew install font-monaspace
```

## install other nerds

```
brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | grep -iE '0xProto|Comic' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true


```


```
brew install --cask font-0xproto-nerd-font
brew install --cask font-comic-shanns-mono-nerd-font

```



To patch all the font files under `/Volumes/Data/bin/Library/Fonts` and save the results to a different directory (e.g., `/Volumes/Data/bin/Library/PatchedFonts`), you can use a shell script with a loop. This assumes you are using `font-patcher` and want to preserve the directory structure.

got to install the [fontforge](https://github.com/ryanoasis/nerd-fonts/tree/master?tab=readme-ov-file#font-patcher) first

### Command:

```bash
#!/bin/bash

# Define source and destination directories
source_dir="/Volumes/Data/bin/Library/Fonts"
dest_dir="/Volumes/Data/bin/Library/PatchedFonts"

# Create the destination directory if it doesn't exist
mkdir -p "$dest_dir"

# Iterate over font files in the source directory
for font in "$source_dir"/*.{otf,ttf}; do
  # Check if the file exists to handle wildcard expansion in case no matches are found
  [ -e "$font" ] || continue
  
  # Get the base name of the font file
  font_name=$(basename "$font")
  
  # Run font-patcher and output the result to the destination directory
  font-patcher "$font" -out "$dest_dir"
done

echo "All fonts have been patched and saved to $dest_dir."
```

### Explanation:

1. **Source and Destination Directories**:
   - `source_dir`: The directory containing the original font files.
   - `dest_dir`: The directory where the patched fonts will be stored.

2. **Create the Destination Directory**:
   - `mkdir -p "$dest_dir"` ensures the target directory exists, creating it if necessary.

3. **Iterate Over Font Files**:
   - The script looks for font files with `.otf` or `.ttf` extensions using a wildcard pattern.

4. **Patch Each Font**:
   - `font-patcher "$font" -out "$dest_dir"` runs the patching operation and saves the patched font to the destination directory.

5. **Base Name Handling**:
   - `basename "$font"` extracts the font file name, ensuring proper handling during processing.

6. **Error Handling**:
   - `[ -e "$font" ] || continue` ensures the loop skips if no matching files are found.

### Running the Script:
1. Save the script to a file, e.g., `patch_fonts.sh`.
2. Make it executable:
   ```bash
   chmod +x patch_fonts.sh
   ```
3. Execute the script:
   ```bash
   ./patch_fonts.sh
   ```

### Notes:
- Replace `font-patcher` with the full path if it’s not in your `PATH`.
- Ensure you have write permissions to the destination directory.

This will batch-patch all fonts in the source directory and place the results in the specified output directory. Let me know if you need further adjustments!