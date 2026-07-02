# carmen

**Purpose:** Interactive SVG visualization of a colored triangle inspired by Carmen Herrera's minimalist geometric art, with color switches and an animated height decay.

## Stack
- Elm 0.19.1
- `elm/browser`, `elm/svg`, `elm/html`, `elm/time`
- Parcel 2.8.x bundler with `@parcel/transformer-elm`
- Tailwind CSS 3.2.x + PostCSS + autoprefixer (styling)

## Build/Run
Uses npm scripts (see `package.json`); entry point is `index.html`.
- `npm run watch` — dev build/watch via Parcel
- `npm run serve` — serve the built `dist/` with http-server
- `npm run build` — production build (`parcel build --no-source-maps`)
- `npm test` — run elm-test
Requires Node 18.x.

## Structure
- `src/Main.elm` — the whole app: `Color` type (Green/Yellow/Red with hex + Spanish names), model of `height` + current color, `Tick` subscription (10ms) that decays the triangle height, color/height control buttons, SVG polygon view.
- `index.html`, `main.js` — page shell + Elm bootstrap.

## Status/Notes
Small working single-module demo app. Despite Green/Yellow/Red colors it is NOT a traffic-light simulation — it is an art homage / animation experiment. `package.json` name is a generic "elm-template" but the code is bespoke.
