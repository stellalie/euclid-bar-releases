# How Euclid's speed numbers are measured

The numbers on [euclid.lgtmworks.com](https://euclid.lgtmworks.com) come from a release build
on a GitHub Actions macOS runner (macOS 15.7, Apple M1, virtual), run on 25 October 2026.

| Number | What it is |
| --- | --- |
| **1.4 ms** | Worst case of 8 queries (`g`, `gi`, `git`, `reb`, `pull req`, `zzz`, `kctl`, `example7`) over 5,000 clipboard entries plus 5,000 browser-history pages, searched and merged the way the panel does it. |
| **9 ms** | Median time to show the panel, from the app's own `show:` timing, over 5 opens after the first. The very first open after launch took 190 ms. |
| **54 MB, 0% CPU** | Resident memory and CPU from `ps`, about 30 seconds after launch with an empty config. |

A real Mac is usually faster than a shared CI runner. The app shows the timing of every search in
the panel footer (`[appearance] show_speed = true`), so you can check it on your own data.
