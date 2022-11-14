# Lecture notes for course Type Theory and Coq

Compile with `make`, full compile (3x, to get the references) with `make full`.
Requires LaTeX installation with `pdflatex` on the path.

The files for the individual sections are in the `content\` directory and must be referenced in `notes.tex`.

To generate a new release, create a new tag with `git tag v_._` and push it with `git push origin v_._`.
This triggers the GitHub workflow which renders and releases a PDF.
