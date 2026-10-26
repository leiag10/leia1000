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

Edit `index.qmd`, `experience.qmd`, `photos.qmd`, `cv.qmd`, and `portfolio-20261026.css`. Update navigation and site settings in `_quarto.yml`. Update the PDF in `assets/` when a newer CV is available. Biographical details were carried over from the previous website and should be reviewed for currency.

## Host with GitHub Pages

Commit the source and rendered `docs/` files. In this repository's GitHub Settings → Pages, select **Deploy from a branch**, the `main` branch, and the `/docs` folder. The expected project-site address is `https://leiag10.github.io/leia1000/` after deployment; deployment has not been configured or verified by this setup.

The `leiag100` repository is independent and has not been changed.

## Update the scrollable CV viewer

Replace `assets/leia-george-cv.docx`, then run `bash scripts/render-cv.sh` with LibreOffice (`soffice`) installed, followed by `quarto render`. This exports the supplied Word document to PDF for an embedded scrollable document viewer. The Word file itself remains unchanged. PDF export preserves document formatting rather than converting content into webpage paragraphs, though font availability can affect layout. Browser support for hiding the PDF toolbar varies; the CV page has no download button.

## Photos

Edit `photos.qmd` and put new photos in `assets/`. The initial gallery uses the existing portrait. Education information remains in the homepage biography and CV.

`styles.css` is retained as a compatibility copy for older cached pages. Keep it synchronized with `portfolio-20261026.css` when updating the design.

## Typography

Headings and the site name use self-hosted Cormorant Garamond at its true bold weight (700). Body text, captions, navigation, and controls use the original system sans-serif stack. Font files and licenses are in `assets/fonts/`. Edit `portfolio-fonts-bold.css` and synchronize `portfolio-fonts-20261026.css`, `portfolio-20261026.css`, and `styles.css` for cached-page compatibility. The embedded CV keeps its document fonts.
