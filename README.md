# Nyawit Music

**Nyawit Music** is a Material Design YouTube Music client fork for Android, iOS and desktop, based on the excellent [Metrolist](https://github.com/MetrolistGroup/Metrolist) project by MetrolistGroup.

This fork keeps **full upstream support**: online streaming, InnerTube/InnerTubeX, accounts, playlists, lyrics, casting, Listen Together, widgets, desktop and iOS targets, modules and dependencies are all preserved. Branding changes are additive only.

## Features

- YouTube Music playback with or without signing in (Innertube / InnerTubeX)
- Android, iOS, Windows, macOS and Linux support
- Material 3 Expressive design
- Lyrics, tempo/pitch, equalizer and listening statistics
- Discord Rich Presence, Last.fm and ListenBrainz scrobbling
- Listen Together, casting (Google Cast, F-Cast, SONOS, DLNA)
- Home-screen widgets and Android Auto
- No ads

## Releases and builds

Builds are produced by GitHub Actions in this repository. See `.github/workflows/` for the release pipelines. Android APKs are named `NyawitMusic-<variant>-<version>.apk`.

## Development

Kotlin Multiplatform (Android, desktop/JVM, iOS, shared). Gradle root project is `NyawitMusic`; the Android application id is `dev.nyawit.music` while the source namespace remains `com.metrolist.android` so upstream sync stays conflict-free.

## Disclaimer

Using Nyawit Music to access YouTube Music may violate YouTube's Terms of Service. Use it at your own risk. YouTube Music is region-restricted; a VPN/proxy in a supported region may be required.

## Attribution and license

Nyawit Music is a fork of [MetrolistGroup/Metrolist](https://github.com/MetrolistGroup/Metrolist). See [ATTRIBUTION.md](ATTRIBUTION.md). Distributed under the **GNU GPL v3.0** — see [LICENSE](LICENSE), kept verbatim.
