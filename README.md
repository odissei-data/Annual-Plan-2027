# ODISSEI Annual Plan 2027

The web edition of the ODISSEI Annual Plan 2027, a companion to the [Annual Report 2025](https://odissei-data.github.io/Annual-Report-2025/). It is a static page published with GitHub Pages, built in the ODISSEI design system.

## Files

| File | What it is |
| --- | --- |
| `index.html` | The page: layout, styles and interactions. You rarely need to touch it. |
| `content.js` | All text and figures: workstreams, plans, challenges, budgets, milestones, KPIs, governance. Edit this file to change content. |
| `img/` | Photos and logos. Conference photos: ODISSEI Conference 2025, nelinadasha.com. The other photos are placeholders from the Annual Report 2025; their credits are still to be confirmed. |

## Editing content

Open `content.js` and change the text between the quotes. Keep the commas and brackets as they are.

- **Values still to be set**: write them in square brackets, for example `"[30%] faster"`. The page highlights them in yellow until you replace them with a real value.
- **Budgets**: each workstream lists its line items under `items`. The stated totals are in `STATED`. If the line items do not add up to the stated total, the page shows a warning in that workstream's budget card.
- **Milestones**: in `MS`, `m` is the month (0 = January, 11 = December). Decimals place a milestone within the month.
- **Photos**: put a new image in `img/` and change the `img` path and `credit` of that workstream.
- **Voices**: add each story under `STORIES` (name, role, service used, quote, portrait). Portraits are cut-out PNGs with a transparent background, for example `img/voice-1.png`.

## Preview locally

```bash
python3 -m http.server 8427
```

Then open http://localhost:8427.

## PDF

The "Save as PDF" button on the page opens the browser's print dialog. The page has its own A4 print layout (cover, chapter openers, full text, page numbers), so "Save as PDF" there produces the PDF edition. A downloadable PDF and its automatic rebuild will be added later.

## Publish

Push to the `main` branch of `odissei-data/Annual-Plan-2027` and enable GitHub Pages (Settings, Pages, deploy from `main`, root folder).

## Still to add

- Message from the Chair (450 to 500 words) and a portrait
- Financial plan Table 1: tasks, amounts and funding sources
- The risk table and a link to the full risk register
- KPI values and targets (marked in square brackets)
- Final photos with credits (stock placeholders are marked "[credit to be confirmed]")
- Voices from the community: portraits and quotes from the Early Career Day
- Laboratory budget: the line items add up to €1,517,115, the draft states €1,517,406
