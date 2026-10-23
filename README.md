# UniDome Patel Hall

## Vercel deployment

This is a client-side Vite/React app and can be deployed from the repository root with these Vercel settings:

- **Framework preset:** Vite
- **Build command:** `npm run build`
- **Output directory:** `dist`
- **Install command:** `npm ci`
- **Node.js:** 18 or newer

The app uses hash-based campus routes (for example, `#events` and `#story/<id>`), so Vercel does not need a history-fallback rewrite. The static images in `public/` are copied into `dist/` by Vite and are referenced from the site root.

No `VITE_*` or other client environment variables are currently required. `server.js` is an optional standalone Node static server for local/self-hosted use after a build; it is not part of the Vercel deployment path.

This MVP keeps authentication, content, and career data in browser `localStorage`; it does not provide server-side persistence or authentication. Some demo avatars, fonts, and links are loaded from external services and therefore require network access in the deployed browser.

For a local production-style check, run `npm run build` and then `npm run preview`.
