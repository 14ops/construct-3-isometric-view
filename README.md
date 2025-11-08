# Isometric Bomber Prototype

This repository contains a Construct 3 prototype that blends a Hades-inspired isometric presentation with Bomberman-style bomb placement, timed explosions, and breakable cover. The version-controlled source lives entirely in the `project/` folder so that it stays readable in Git hosting services and avoids storing Construct's binary archive format.

## Features

- **Isometric arena**: diamond grid layout that positions tiles, walls, and destructible crates in an isometric projection.
- **Player controller**: sprite prepared with Eight Direction movement for responsive movement around the board.
- **Bombing gameplay**: drop grid-snapped bombs with Space, let them detonate into cross-shaped blasts, and clear crates or enemies caught in the flames before they respawn.
- **Responsive prototype logic**: the `MainEvents` sheet manages bomb stock, cooldowns, countdown timers, explosions, and simple defeat/reset states entirely inside Construct 3.

## Working with the project folder

1. Open [Construct 3](https://editor.construct.net/) in your browser.
2. Choose **Menu → Project → Open Local File...**.
3. Navigate into the repository's `project/` directory and open `project.c3proj` to work directly from the folder source.
4. Press **Play** to preview the prototype. Iterate on the layout, event sheet, and object types to extend the gameplay.

## Packaging a `.c3p` archive yourself

Binary `.c3p` files are not tracked in this repository so the history stays lightweight and friendly to GitHub's web UI. When you need a downloadable archive you can generate one locally from the tracked sources:

```bash
./scripts/package.sh
```

The helper script wraps the `zip` command Construct expects and produces `IsometricBomber.c3p` in the repository root. If you prefer to run the command manually, execute `zip -r IsometricBomber.c3p project` instead. Commit the folder sources only; the generated archive should remain untracked.
