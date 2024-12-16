from appunti.zettelkasten import Note
from glob import glob
from pathlib import Path
import re
import unicodedata
from appunti.zettelkasten.notes import sluggify


notes = {}
files = glob("*.md")

for f in files:
    notes[f] = Note.read(Path("~/Desktop/Knowledge/").expanduser() / f)

new_names = {}
for n, v in notes.items():
    new_names[n] = sluggify(v.title)

for n, v in new_names.items():
    Path(n).rename(v+".md")
