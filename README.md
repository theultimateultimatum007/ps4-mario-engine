# PS4 Mario Engine

Fork of Gatete Mario Engine: Anniversary Edition with PS4 Homebrew build support.

## DualShock controls (PS4)

| Button | Action |
|--------|--------|
| **Cross** | Jump / Spin |
| **Circle** | Jump / Spin (alt) |
| **Square** | Run / Shoot |
| **R1 / R2** | Run / Shoot |
| **Triangle** | Reserve item |
| **Start** | Pause |
| **D-pad / Left stick** | Move |
| **Circle** | Back / cancel (menus); resume when paused |

## PS4 Homebrew export (GayMaker-Studio)

1. Install **GameMaker Studio 1.4** (1.4.9999 recommended by GayMaker) and open:
   `PS4MarioEngine.gmx/PS4MarioEngine.project.gmx`
2. Open **Global Game Settings** once and save (avoids a known GayMaker parser crash).
3. Build and test on **Windows** first (Run as administrator if the runner cannot write `AppData\Local`).
4. Download [GayMaker-Studio](https://github.com/LiEnby/GayMaker-Studio/releases) (v1.2+).
5. Point GayMaker at `PS4MarioEngine.project.gmx`, set title / Title ID / icons, then compile to `.pkg`.
6. `orbis-wave-psslc.exe` obtained through our Discord. (https://discord.gg/VjEj79wRmp)