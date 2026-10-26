# Leia George portfolio

A Quarto website with editable source pages at the repository root. Rendered hosting files live in `docs/`.

## Develop

Use Quarto 1.4.555 (the version used to validate this project):

```sh
quarto preview --host 127.0.0.1 --port 4200 --no-browser
```

In the prepared cloud environment, Quarto is at `/workspace/tools/quarto-1.4.555/bin/quarto`; add that directory to PATH or use its full path. Set `XDG_CACHE_HOME=/workspace/.cache` for Quarto commands in this cloud environment because the default home cache is read-only.

## Build

```sh
quarto render
```

Edit `index.qmd`, `experience.qmd`, `education.qmd`, `cv.qmd`, and `styles.css`. Update navigation and site settings in `_quarto.yml`. Update the PDF in `assets/` when a newer CV is available. Biographical details were carried over from the previous website and should be reviewed for currency.

## Host with GitHub Pages

Commit the source and rendered `docs/` files. In this repository's GitHub Settings → Pages, select **Deploy from a branch**, the `main` branch, and the `/docs` folder. The expected project-site address is `https://leiag10.github.io/leia1000/` after deployment; deployment has not been configured or verified by this setup.

The `leiag100` repository is independent and has not been changed.

## Update the scrollable CV viewer

Replace `assets/leia-george-cv.docx`, then run `bash scripts/render-cv.sh` with Pandoc 3.1.11.1 (or a compatible version), followed by `quarto render`. The script converts the Word document to a self-contained HTML document, preserving its text and basic formatting for the embedded scrollable viewer. The viewer has no download toolbar or button. This HTML presentation may differ from Word's page layout.
