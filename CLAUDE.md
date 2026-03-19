# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront. Built by Abayomi Igwubor Chris from Pravins Template


## Architecture

The project is a static website consisting of the following main files:

- index.html - Main single-page website layout
- style.css - Contains all styling and responsive design
- images/ - Stores all image assets used in the site
- privacy.html - Privacy policy page
- terms.html - Terms and conditions page
- README.md - Repository documentation

The website uses a single-page layout with multiple sections including hero, about, services,
courses, books, community, contact, and footer.

## Conventions

No JavaScript allowed in the project
Mobile-first CSS approach
All images stored in images/

**Key requirement**: Before deployment, students must edit the footer in `index.html` to add their own deployment details (name, cohort, group, date) as proof of ownership.

## File Structure

- **index.html** — Main website file with all sections: hero, about, services, courses, books, community, contact, and footer
- **style.css** — All styling for the website
- **images/** — Directory containing all images (logo, profile, course thumbnails, book covers, etc.)
- **privacy.html** — Privacy policy page
- **terms.html** — Terms of service page

## Key Customizations for Students

### Mandatory Ownership Proof (DMI Rule)

Edit the footer in `index.html` (around line 604) and replace:
```html
<p>Crafted with <span>cloud</span> excellence by Pravin Mishra</p>
```

With:
```html
<p><strong>Deployed by:</strong> [Your Name] | [Cohort] | [Group] | [Week] | [Date]</p>
```

This proof must be visible in browser screenshots submitted for DMI verification.

### Optional Customizations

Students may customize:
- Portfolio name (title tag in `index.html`)
- Profile image (`images/profile.jpg`)
- About section content
- Course/book links and content
- Contact information
- Social media links in the footer

## Deployment & Serving

No build process is required. The website is purely static HTML/CSS:

1. Copy all files to a directory on your Ubuntu VM
2. Configure Nginx to serve the directory:
   ```nginx
   server {
       listen 80;
       server_name _;
       root /path/to/website;
       index index.html;
   }
   ```
3. Access via `http://<your-public-ip>`

## Architecture Notes

- **Single-page design** with smooth scrolling navigation to different sections
- **Responsive layout** using CSS Grid and Flexbox (mobile-friendly)
- **No JavaScript dependencies** except smooth scrolling (built into CSS)
- **CSS animations** for visual effects (fade-ins, hover states)
- **Font Awesome icons** loaded from CDN for icons in the "trusted by" section

The website uses a simple hero section → about → services → courses → books → community → contact flow. All navigation is anchor-based (`#section-id`).

## Mobile Responsiveness

CSS includes responsive breakpoints at:
- **900px** — Tablet/small desktop (3-col → 2-col courses grid)
- **768px** — Books section layout changes
- **600px** — Mobile (hamburger menu, 1-col layouts)

The hamburger menu toggles the mobile navigation (uses simple `show` class toggling, no complex JS framework).
