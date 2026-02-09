#!/bin/bash
# Run this from inside your unzipped site folder (miriamgolden.github.io/)
# It downloads all PDFs from the Wix site and saves them with the correct filenames.

mkdir -p assets/pdf

echo "Downloading PDFs from Wix..."

curl -L -o assets/pdf/golden-cv.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_97fbdb9d26f84f4695b2de397b307e23.pdf"

curl -L -o assets/pdf/notes-on-collaboration.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_f63725a9dc56421286ff1becf7331721.pdf"

curl -L -o assets/pdf/r-markdown-manual.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_cf48be832c074c2b86f0fa63c3a5d3fe.pdf"

curl -L -o assets/pdf/github-manual.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_0e37f0f2549e45d9bd37cdbbe7bdee3b.pdf"

curl -L -o assets/pdf/standard-operating-procedures.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_8639af559d9843d68c670ad18b1f1c6c.pdf"

curl -L -o assets/pdf/what-to-expect.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_a4e4e4415af64880964a3b232d76e235.pdf"

curl -L -o assets/pdf/nsf-ddrig-slides.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_09dba93fc51d4037bf12838f0e49ca4a.pdf"

curl -L -o assets/pdf/brian-min-ddrig-2009.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_f988636788f34ed79170f38e777466ae.pdf"

curl -L -o assets/pdf/core-course-syllabus.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_df78d920506a4f3bb65a91c4c9a32a11.pdf"

curl -L -o assets/pdf/practicum-syllabus.pdf \
  "https://www.miriamgolden.com/_files/ugd/02c1bf_211099a707d34ef3b2a14b905fdc5fcc.pdf"

echo ""
echo "Done! Verifying downloads..."
echo ""
for f in assets/pdf/*.pdf; do
  size=$(wc -c < "$f")
  if [ "$size" -gt 100 ]; then
    echo "  ✓ $(basename $f) ($size bytes)"
  else
    echo "  ✗ $(basename $f) — FAILED (too small)"
  fi
done
