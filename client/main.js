function runAddMarkers() {
    var csInterface = new CSInterface();
    csInterface.evalScript('$.runScript.addMarkers()');
}

document.getElementById('addMarkersBtn').addEventListener('click', runAddMarkers);