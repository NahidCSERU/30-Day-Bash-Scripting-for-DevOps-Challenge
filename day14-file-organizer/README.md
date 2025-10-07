# File Organizer Script

This is a simple Linux bash script that organizes files in a directory into folders based on their file types.

## Features
- Automatically creates folders for:
  - Documents (pdf, docx, txt)
  - Images (jpg, png, gif)
  - Music (mp3, wav)
  - Archives (zip, tar, gz)
  - Scripts (sh, py, js)
- Moves files into the respective folders
- Easy to customize for additional file types

## Usage
1. Place your files in the `sample_files/` directory.
2. Run the script:
```
./organize_files.sh sample_files
```
3.The organized files will appear in the organized/ directory.
## Output Structure:
```
organized/
├── Documents/
│   └── document1.pdf
├── Images/
│   └── photo.jpg
├── Music/
│   └── song.mp3
├── Archives/
│   └── archive.zip
├── Scripts/
│   └── script.py
└── Others/
```
## Optional Enhancements:

- Automatically detect new file types and create folders dynamically

- Add logging for moved files

- Run as a cron job to periodically organize downloads folder