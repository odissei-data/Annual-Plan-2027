# ODISSEI Annual Plan 2027

The web edition of the ODISSEI Annual Plan 2027, a companion to the [Annual Report 2025](https://odissei-data.github.io/Annual-Report-2025/). It is a static page published with GitHub Pages, built in the ODISSEI design system.

## Files

| File | What it is |
| --- | --- |
| `index.html` | The page: layout, styles and interactions. You rarely need to touch it. |
| `content.js` | All text and figures: workstreams, plans, budgets, KPIs, governance. Edit this file to change content. |
| `img/` | Photos and logos. Conference photos: ODISSEI Conference 2025, nelinadasha.com. The other photos are placeholders from the Annual Report 2025; their credits are still to be confirmed. |
| `ODISSEI-Annual-Plan-2027.pdf` | The PDF edition, generated from the page. |
| `make-pdf.sh` | Builds the PDF from the page. |
| `.github/workflows/pdf.yml` | Rebuilds the PDF on GitHub after every change. |

## Editing content

Open `content.js` and change the text between the quotes. Keep the commas and brackets as they are.

- **Values still to be set**: write them in square brackets, for example `"[30%] faster"`. The page highlights them in yellow until you replace them with a real value.
- **Budgets**: each workstream lists its line items under `items`. The stated totals are in `STATED`. Small rounding differences between the line items and the stated total are expected and are not flagged.
- **Photos**: put a new image in `img/` and change the `img` path and `credit` of that workstream.
- **After editing `content.js`**: change the date in `content.js?v=…` near the bottom of `index.html` (for example to today's date). Otherwise browsers that visited before may keep showing the old content.

## Preview locally

```bash
python3 -m http.server 8427
```

Then open http://localhost:8427.

## PDF

`ODISSEI-Annual-Plan-2027.pdf` is the print edition (A4). The page has its own print layout: a full-bleed cover and chapter openers, the full text of every section in two columns, all budgets and KPIs open, and page numbers.

**The PDF rebuilds itself.** Whenever `content.js`, `index.html` or a file in `img/` changes on `main`, the GitHub Action in `.github/workflows/pdf.yml` builds a new PDF and commits it to the repository, so the published PDF always matches the page. You can follow it under the Actions tab, and run it by hand there with "Run workflow".

To build it on your own computer instead (needs Python 3 and Google Chrome):

```bash
sh make-pdf.sh
```

After a large text change, open the new PDF and check the page breaks, for example that no heading is left alone at the bottom of a page.

## Publish

Push to the `main` branch of `odissei-data/Annual-Plan-2027` and enable GitHub Pages (Settings, Pages, deploy from `main`, root folder).

## Still to add

- Message from the Chair: a higher-resolution portrait
- KPI values and targets (marked in square brackets)
- Final photos with credits (stock placeholders are marked "[credit to be confirmed]")
