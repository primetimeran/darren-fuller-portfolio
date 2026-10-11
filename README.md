# PRIME DXF 2.0 — SportsCenter × Fine Art

Responsive, dependency-free static portfolio for Darren Fuller. Includes downloadable Word resume, certification information, NBA-style player comparisons, documented analytical case study, and interactive Sales Operations KPI dashboard.

## Quick start

Open `index.html` in your browser, or run `python3 -m http.server 8000` from this folder and open `http://localhost:8000`.

## Deploy to Vercel

1. Unzip this project. Put **the contents of this folder** at the root of your GitHub repository (not an extra nested folder).
2. Commit and push the files to GitHub.
3. In Vercel, open the project connected to `primedxf.site`, then Settings → Git → connect/select this repository (or import a new project).
4. Framework preset: **Other**. Build command: **none**. Output directory: **`.`** (project root).
5. Deploy. If creating a new Vercel project, move the custom domain `primedxf.site` to that project under Settings → Domains; otherwise deploying to the existing connected project preserves its domain.
6. Future changes: edit files, commit, push; Vercel redeploys automatically when Git integration is enabled.

## What's real vs demonstration

- Professional summary, career roles and certificates are adapted from the supplied resume. Confirm all dates/titles before publishing, especially CHRM Studios (resume says 2015–present; prior career descriptions differ).
- `assets/Darren_Fuller_Resume.docx` is a copy of the resume supplied in this conversation. The site includes a working download link.
- `data/nba_demo.csv`: five **fictional** players. All player numbers are illustrative, not NBA season stats.
- `data/sales_demo.csv`: sixteen **synthetic** CRM opportunities. KPIs are calculated in the browser from these records and change with filters. No employer data or claimed business results.
- No claims such as “140K rows analyzed” or “40% faster reporting” are included because source evidence was not provided.
- Certifications are text-only until credential URLs or PDFs are provided. No invented verification links.

## Data model

NBA: compare PPG, true shooting %, assists, usage %. For real-world NBA research, use a licensed/public dataset and cite season, source and extraction date. The TS% formula is PTS / (2 × [FGA + 0.44 × FTA]).

Sales: weighted forecast uses fixed illustrative probabilities (Discovery 10%, Qualified 25%, Proposal 50%, Negotiation 75%, Won 100%, Lost 0%). Open pipeline excludes Won/Lost. Win rate = Won / (Won + Lost), so small filtered samples can be volatile.

## Personalize before sharing

- Replace `assets/Darren_Fuller_Resume.docx` if your resume changes.
- Verify work dates/titles and certificates.
- Add LinkedIn, GitHub and certificate links once you have exact public URLs.
- Replace synthetic CSV data with sourced project datasets, update labels, and document methodology and findings. Keep data provenance clear.
- The original website source wasn't provided; this is a standalone recreation of the requested aesthetic, not a byte-for-byte modification of the existing site.

## Files

- `index.html` — semantic markup and sections
- `styles.css` — responsive broadcast / painterly design, reduced-motion support
- `script.js` — filter, comparison and dashboard logic
- `data/*.csv` — editable demonstration datasets
- `data/*.sql` — reproducible example queries
- `assets/Darren_Fuller_Resume.docx` — resume download
- `vercel.json` — Vercel static configuration

No framework, API keys, build step, tracking, or backend required. Google Fonts require internet; fallback fonts are provided.
