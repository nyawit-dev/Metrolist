package com.metrolist.android

import androidx.compose.ui.Modifier
import androidx.compose.ui.input.key.Key
import androidx.compose.ui.input.key.KeyEventType
import androidx.compose.ui.input.key.onPreviewKeyEvent
import androidx.compose.ui.input.key.type
import com.metrolist.android.playback.PlayerConnection

/**
 * Forwards Android TV remote / keyboard media keys to the app's existing
 * [PlayerConnection].
 *
 * This only adds an input path: it does not replace or alter playback,
 * network, or account logic. Keys that are not media keys are left untouched
 * so normal navigation keeps working.
 */
fun Modifier.mediaKeyHandler(player: PlayerConnection?): Modifier = onPreviewKeyEvent { event ->
    if (event.type != KeyEventType.KeyDown) {
        false
    } else {
        when (event.key) {
            Key.MediaPlayPause -> {
                player?.togglePlayPause()
                true
            }
            Key.MediaNext -> {
                player?.skipToNext()
                true
            }
            Key.MediaPrevious -> {
                player?.skipToPrevious()
                true
            }
            Key.MediaStop -> {
                player?.stop()
                true
            }
            else -> false
        }
    }
}
