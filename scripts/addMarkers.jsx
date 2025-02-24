$.runScript = {
    addMarkers: function() {
        try {
            var seq = app.project.activeSequence;
            if (!seq) return;

            var existingMarkers = [];
            var markers = seq.markers;
            var marker = markers.getFirstMarker();
            while (marker) {
                existingMarkers.push(marker.start.seconds);
                marker = markers.getNextMarker(marker);
            }

            var startTime = 0;
            var hasStart = false;
            for (var i = 0; i < existingMarkers.length; i++) {
                if (existingMarkers[i] === startTime) {
                    hasStart = true;
                    break;
                }
            }
            if (!hasStart) {
                seq.setPlayerPosition("0");
                seq.markers.createMarker(startTime);
                existingMarkers.push(startTime);
            }

            for (var i = 0; i < seq.videoTracks.numTracks; i++) {
                var track = seq.videoTracks[i];
                for (var j = 0; j < track.clips.numItems; j++) {
                    var clip = track.clips[j];
                    var start = clip.start.seconds;
                    var end = clip.end.seconds;
                    var startExists = false;
                    var endExists = false;
                    for (var k = 0; k < existingMarkers.length; k++) {
                        if (existingMarkers[k] === start) startExists = true;
                        if (existingMarkers[k] === end) endExists = true;
                    }
                    if (!startExists) {
                        seq.markers.createMarker(start);
                        existingMarkers.push(start);
                    }
                    if (!endExists) {
                        seq.markers.createMarker(end);
                        existingMarkers.push(end);
                    }
                }
            }
        } catch (e) {
            // Silent fail—log if needed
        }
    }
};
