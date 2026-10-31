# ![logo](https://raw.githubusercontent.com/azerothcore/azerothcore.github.io/master/images/logo-github.png) AzerothCore
## ARAC - All Races All Classes
# ![ARAC icon](https://raw.githubusercontent.com/azerothcore/mod-arac/master/icon.png)
- Latest build status with AzerothCore: [![Build Status](https://github.com/azerothcore/mod-arac/workflows/core-build/badge.svg?branch=master&event=push)](https://github.com/azerothcore/mod-arac)

## Screenshot

![arac](https://raw.githubusercontent.com/azerothcore/mod-arac/master/images/screen1.png)

![arac](https://raw.githubusercontent.com/azerothcore/mod-arac/master/images/screen2.png)


# Usage

- Make a backup of your database before using this module.
- The world SQL is in `data/sql/world/base/arac.sql` for AzerothCore's module database updater. On an existing installation, confirm that the updater applied it before creating ARAC characters.
- Copy `Patch-Z.MPQ` into each player's `WoW/Data/` directory. Check that no `Patch-Z.MPQ` exists there first; never replace an unrelated client patch.
- Copy the three files from `patch-contents/DBFilesContent/` into the server's active `data/dbc/` directory, replacing the matching files. The client MPQ and server DBC files must come from the same ARAC revision.
- Restart the server and client after installing the files. Back up the database and the original server DBC files first.

# Need help?

If you encounter a bug, please [open an issue](https://github.com/azerothcore/mod-arac/issues/new).
     

## Credits

* [iThorgrim](https://github.com/iThorgrim)

AzerothCore: [Repository](https://github.com/azerothcore) - [Website](http://azerothcore.org/) - [Discord chat community](https://discord.gg/PaqQRkd)
