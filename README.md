# Essentials Professional Starter

A premium Astro starter template for professional services businesses.

## Features

- Built with Astro + TypeScript
- Tailwind CSS styling
- Consumes `@indirecttek/essentials-engine` components
- Professional services layout (trust, process, testimonials, about)
- Fully configurable via `siteConfig.ts`

## Structure

```
src/
├── config/
│   └── siteConfig.ts          # Main configuration
├── pages/
│   └── index.astro            # Main landing page
├── components/
│   ├── TrustBand.astro
│   ├── ProcessSection.astro
│   ├── AboutSection.astro
│   ├── TestimonialsSection.astro
│   └── HighlightStrip.astro
└── styles/
    └── global.css
```

## Getting Started

```bash
npm install
npm run dev
```

## Customization

Edit `src/config/siteConfig.ts` to customize:
- Business name and contact info
- Theme colors
- Hero section content
- Services
- SEO metadata
