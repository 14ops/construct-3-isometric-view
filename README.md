# Isometric Bomber Prototype

This repository contains a Construct 3 project prototype combining a Hades-inspired isometric presentation with Bomberman-style
bomb placement, timed explosions, and breakable cover. The version-controlled source lives entirely in the `project/` folder so
that it stays readable in Git hosting services. A packaged `IsometricBomber.c3p` archive is also included for anyone who would
prefer to download and open the project as a single file. Binary assets (the `.c3p` archive and the object art) are stored with
[Git Large File Storage](https://git-lfs.com/) so they can be downloaded without bloating the regular Git history.

## Features

- **Isometric arena**: diamond grid made from a pre-built layout file that positions tiles, walls, and destructible crates in an
  isometric projection.
- **Player controller**: sprite prepared with an Eight Direction movement behavior tuned for responsive twin-stick-like movement.
- **Bombing gameplay**: drop grid-snapped bombs with Space, watch them detonate into cross-shaped blasts, and clear crates or enemies caught in the flames before they respawn.
- **Responsive prototype logic**: event sheet scripting handles bomb stock, cooldowns, countdown timers, explosions, and simple
defeat/reset states entirely inside Construct 3.

## How to use

### Option 1: Work from folder sources

1. Open [Construct 3](https://editor.construct.net/) in your browser.
2. Choose **Menu → Project → Open Local File...**.
3. Navigate into the repository's `project/` directory and open `project.c3proj` to work from the folder source.
4. Press **Play** to preview the prototype. Iterate on the layout, event sheet, and object types to extend the gameplay.

### Option 2: Download the packaged `.c3p`

1. Make sure [Git LFS is installed](https://docs.github.com/en/repositories/working-with-files/using-large-files/about-git-large-file-storage)
   before cloning or downloading the repository so the binary assets resolve correctly.
2. Download `IsometricBomber.c3p` from the repository root (either via GitHub's **Download** button or by running `git lfs pull`).
2. In Construct 3 choose **Menu → Project → Open Local File...** and select the downloaded archive.
3. Press **Play** to preview the prototype or extract the project to continue iterating on it.

To refresh the distributable after editing the folder-based project, run the helper script:

```bash
./scripts/package.sh
```

The script re-zips the `project/` directory (using the same structure Construct 3 expects) into `IsometricBomber.c3p`. If you prefer to perform the step manually, run `zip -r IsometricBomber.c3p project` from the repository root.
