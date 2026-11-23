# Attribution

## Upstream project

**Nyawit Music** is a fork of
[Metrolist](https://github.com/MetrolistGroup/Metrolist) by MetrolistGroup.
All application logic, online streaming, YouTube Music/InnerTube extractor
integration, account features, network dependencies and update mechanisms are
inherited from upstream and remain enabled and unchanged in this fork.

## Changes made in this fork

- Application id changed to `dev.nyawit.music` and APK output names prefixed `NyawitMusic-`.
- App label, Gradle project name, theme and launcher icon assets rebranded to "Nyawit Music".
- README rewritten and this attribution file added.

The Android namespace is intentionally kept as `com.metrolist.android` to make
merging upstream changes easier.

## Artwork

Launcher icon vectors and the PNG logos under `assets/` were generated
originally for this fork using Pillow. No third-party artwork was used.

## License

This fork is distributed under the **GNU General Public License, version 3**
(GPL-3.0), the same license as the upstream project. The full license text is
in [LICENSE](LICENSE), which is left unmodified.
