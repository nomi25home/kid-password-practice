# Contributing

This is a small, single-purpose project — one template, one HTML file, one tiny shell script — so contributing is lightweight too.

## Reporting a bug or suggesting an idea

Open a [GitHub issue](../../issues). A short description and (if it's a bug) the platform you ran it on is plenty.

## Making a change

1. Fork the repo and clone your fork.
2. `cp .env.example .env` and fill in test values (never a real password).
3. `docker compose up -d` and check your change in a browser at `http://localhost:8100`.
4. Open a pull request describing what changed and why.

## Scope

Good contributions: new `THEME` presets, accessibility fixes, clearer docs, support for another platform's stack format, bug fixes.

Out of scope: anything that turns this into a real authentication/security mechanism — the whole point is that it's a low-stakes memorization game for a young kid, not a login system. If you want that, this isn't the right base to build it on.

## Code style

Keep it dependency-free: plain HTML/CSS/JS in `index.html.template`, POSIX `sh` in `render-and-serve.sh`. No build step, no frameworks, no new runtime dependencies — that simplicity is the point.
