#!/usr/bin/env python3
"""Build the Cowork Guide PDF with the Quarto + Typst whitepaper template.

Run from the repository root:

    python3 scripts/build-pdf.py            # assemble content, then render
    python3 scripts/build-pdf.py --assemble # assemble pdf/build/content.md only

Output: pdf/cowork-guide.pdf (ignored by Git).
Requires Python 3 and Quarto (bundled Typst).
"""
import argparse
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BUILD = ROOT / "pdf" / "build"

# Reading order (group names are documentation only) for a non-developer: orientation, first steps, what it can do,
# staying safe, fixing problems, then prompts to copy, then quick reference.
PARTS = [
    ("Understand Cowork", [
        "guide/00-overview.md",
        "guide/01-getting-started.md",
        "guide/02-capabilities.md",
    ]),
    ("Use it safely", [
        "guide/03-security.md",
        "guide/04-troubleshooting.md",
    ]),
    ("Prompt library", [
        "prompts/README.md",
        "prompts/file-ops.md",
        "prompts/document-creation.md",
        "prompts/data-extraction.md",
        "prompts/research.md",
        "prompts/conciergerie.md",
    ]),
    ("Quick reference", [
        "reference/cheatsheet.md",
        "reference/faq.md",
        "reference/glossary.md",
        "reference/comparison.md",
    ]),
]


def clean(text: str) -> str:
    """Prepare one Markdown file for Pandoc/Typst, leaving code fences intact."""
    out, in_fence = [], False
    for line in text.splitlines():
        if line.lstrip().startswith("```"):
            in_fence = not in_fence
            out.append(line)
            continue
        if in_fence:
            out.append(line)
            continue
        if line.startswith("\U0001F310"):  # language switcher line
            continue
        if re.fullmatch(r"-{3,}\s*", line):  # decorative horizontal rules
            continue
        # [text](relative.md) and [text](#anchor) become plain text: they are
        # dead links in a PDF. http(s) and mailto links are kept.
        line = re.sub(r"\[([^\]]+)\]\((?!https?:|mailto:)[^)]*\)", r"\1", line)
        out.append(line)
    return "\n".join(out).strip() + "\n"


def assemble() -> Path:
    BUILD.mkdir(parents=True, exist_ok=True)
    chunks = []
    for _group, files in PARTS:
        for rel in files:
            chunks.append(clean((ROOT / rel).read_text(encoding="utf-8")))
    dest = BUILD / "content.md"
    dest.write_text("\n\n".join(chunks), encoding="utf-8")
    return dest


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--assemble", action="store_true", help="only build pdf/build/content.md")
    args = parser.parse_args()
    dest = assemble()
    print(f"assembled {dest.relative_to(ROOT)}")
    if args.assemble:
        return 0
    version = (ROOT / "VERSION").read_text().strip()
    cmd = [
        "quarto", "render", "cowork-guide.qmd", "--to", "whitepaper-typst",
        "-M", f"version:{version}",
        "-M", "from:markdown+lists_without_preceding_blankline",
    ]
    print("running:", " ".join(cmd), "(in pdf/)")
    return subprocess.run(cmd, cwd=ROOT / "pdf").returncode


if __name__ == "__main__":
    sys.exit(main())
