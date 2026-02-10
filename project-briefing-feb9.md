# Miriam Golden Website Migration — Project Briefing (Updated Feb 9, 2026)

## Current Status
- Site is LIVE at https://miriamgolden.github.io
- All pages built and deployed: index, books, articles, opeds, research, resources, teaching, students, publications
- PDFs downloaded from Wix and in place
- GitHub username: miriamgolden, repo: miriamgolden.github.io, branch: master

## KNOWN BUG: Photo not displaying
The profile photo file (assets/images/profile.jpg) IS in the repo and loads fine at:
https://miriamgolden.github.io/assets/images/profile.jpg

But it does not appear on the homepage. The likely cause: the index.html currently deployed does NOT contain an <img> tag — it still has the old placeholder <div>. Previous attempts to push a corrected index.html did not take effect. 

TO FIX: Claude needs to provide a corrected index.html and verify (by viewing page source after push) that the deployed version actually contains:
<img src="assets/images/profile.jpg" alt="Miriam A. Golden">

Debug steps:
1. User should run: cat index.html | grep -i "img\|photo\|profile\|placeholder"
2. If the output shows "photo-placeholder" instead of "<img", the wrong file is in place
3. Replace index.html with the corrected version and push
4. Verify by viewing page source at https://miriamgolden.github.io

## PENDING: Domain transfer (approx Feb 14, 2026)
Porkbun transfer was submitted Feb 9, 2026. Status: "pending transfer from losing registrar." Takes up to 5 days.

Once transfer completes:
1. Add CNAME file back to repo (contents: miriamgolden.com)
   - git add CNAME && git commit -m "Add CNAME" && git push
2. Set DNS at Porkbun — add four A records:
   - 185.199.108.153
   - 185.199.109.153
   - 185.199.110.153
   - 185.199.111.153
3. Add a CNAME record: www -> miriamgolden.github.io
4. In GitHub repo Settings → Pages → Custom domain: enter miriamgolden.com
5. Check "Enforce HTTPS"
6. Wait for DNS propagation (can take up to 24 hours)
7. Test: miriamgolden.com should show the new site

## Site Design
- Modeled on jakebowers.org: white background, system sans-serif, minimal
- Name top-left, horizontal nav, thin rule, bio left / photo right
- Affiliations & Contact section with profile links (Email, Google Scholar, ORCID, Bluesky)
- Footer: nav links, copyright, GoatCounter analytics, Back to top
- Quick Links section was REMOVED (redundant with nav and footer)
- All CSS is inline in each HTML file

## Homepage Bio (6 paragraphs, approved)
1. Current positions (Stanford CDDRL / Democracy Action Lab + UCLA)
2. EUI history (2019-2024), prior UCLA
3. Book project: *Capacity Gaps: Reelection and Governance Around the World* ("completing" not "preparing")
4. Awards
5. Affiliations (Guggenheim, Nuffield, CEGA, CERP, EGAP)
6. Google Scholar link

## Style Choices
- Third person, "Golden" at paragraph starts, "she/her" for secondary refs
- Professional tone
- Email: golden@ucla.edu or magolden@stanford.edu
- Copyright: © 2025 Miriam A. Golden. All rights reserved.
- Analytics: GoatCounter (needs account setup at goatcounter.com)

## Files in Repo
- index.html (homepage — NEEDS PHOTO FIX)
- books.html, articles.html, opeds.html (publications)
- research.html (working papers)
- resources.html (guides + NSF DDRIG)
- teaching.html, students.html
- publications.html (landing page)
- assets/images/profile.jpg (headshot — confirmed working)
- assets/pdf/ (10 PDFs downloaded from Wix)
- README.md
- CNAME — REMOVED temporarily, add back after domain transfer

## Other Notes
- golden.polisci.ucla.edu: UCLA subdomain, can be updated to point to new site after migration
- Wix site expires August 2026
- User prefers command line, is an academic not an engineer
- GoatCounter account at goatcounter.com still needs to be created (free)
