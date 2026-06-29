cef.on("cef:show:spectator", () => {
    document.getElementById("spectate-menu").style = `display: block`;
});

cef.on("cef:hide:spectator", () => {
    document.getElementById("spectate-menu").style = `display: none`;
});

cef.on("cef:update:spectator", (id, value) => {
    document.getElementById(`spectate-player-${id}`).innerHTML = value;
});