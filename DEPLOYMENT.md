# Patel Hall Campus Edit — local and Vercel deployment

## Run locally from Windows Command Prompt

The `/c/Users/...` path is a Git Bash/Linux-style path. It does **not** work in
Windows Command Prompt. In `cmd.exe`, use the Windows drive path:

```bat
cd /d "C:\Users\hello\Downloads\extracurricular\unidome-patel-hall-iitkgp"
dir package.json
npm ci
npm run dev -- --host 127.0.0.1 --port 4175
```

Open the URL printed by Vite, normally:

```text
http://localhost:4175/
```

You can also double-click `start-local.cmd` in the repository. It changes to
the correct directory, installs dependencies if needed, and starts Vite.

If port `4175` is already in use, use another port:

```bat
npm run dev -- --host 127.0.0.1 --port 4176
```

## Verify the production build locally

```bat
cd /d "C:\Users\hello\Downloads\extracurricular\unidome-patel-hall-iitkgp"
npm ci
npm run build
npm run preview -- --host 127.0.0.1 --port 4175
```

## Push the MVP to GitHub

Run these commands from the repository folder:

```bat
cd /d "C:\Users\hello\Downloads\extracurricular\unidome-patel-hall-iitkgp"
git status
npm ci
npm run build
git add .
git diff --cached --check
git commit -m "feat: redesign Patel Hall campus and career experience"
git push -u origin main
```

The configured remote is:

```text
https://github.com/shauryasingh54/unidome-patel-hall-iitkgp-.git
```

If Git asks for a GitHub password over HTTPS, use a GitHub personal access
token or configure SSH. Never put a token in a committed file or in chat.

## Deploy to Vercel

1. Open <https://vercel.com/new> and sign in with GitHub.
2. Import `shauryasingh54/unidome-patel-hall-iitkgp-`.
3. Keep the root directory as the repository root.
4. Use the detected **Vite** framework.
5. Confirm:
   - Install command: `npm ci`
   - Build command: `npm run build`
   - Output directory: `dist`
6. Leave environment variables empty for this MVP; the current repository does
   not require any `VITE_*` variables.
7. Click **Deploy**.

The repository includes `vercel.json` with these same build settings.

## MVP limitations

- Auth, content submissions, editorial state, resumes, and referral demo data
  are currently stored in browser `localStorage`.
- There is no production database or server-side authentication yet.
- Instagram is manual curation only; no API synchronization is configured.
- External fonts, avatars, and external links require browser network access.
