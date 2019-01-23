const SELECTORS = {
    HEALTH: '[data-health]',
    ALL_ACTION_BUTTONS: '[data-action]',
    ACTION_BUTTON: (action) => `[data-action="${action}"]`
};

// initialize

setDisablingActionButtons(true);
fetch('/start').then(() => {
    syncHealth();

    initializeActionButton('to_feed');
    initializeActionButton('put_to_bad');
    initializeActionButton('play_game');

    setDisablingActionButtons(false);
});

function setDisablingActionButtons(disabled) {
    document
        .querySelectorAll(SELECTORS.ALL_ACTION_BUTTONS)
        .forEach(buttonEl => buttonEl.disabled = disabled);
}

function initializeActionButton(action) {
    document
        .querySelector(SELECTORS.ACTION_BUTTON(action))
        .addEventListener('click', () => doAction(action));
}

// sync health

function syncHealth() {
    fetch('/health')
        .then(responce => responce.text())
        .then(renderHealthFactory())
        .then(onSynced);
}

function renderHealthFactory() {
    const healthEl = document.querySelector(SELECTORS.HEALTH);
    return (health) => {
        const isDead = health === 'dead';
        healthEl.innerText = isDead ? 'Your tamagotchi is dead' : `Health: ${health}`;
        return isDead;
    }
}

function onSynced(isDead) {
    if (!isDead) return setTimeout(syncHealth, 1000);
    setDisablingActionButtons(true)
}

// actions

function doAction(action) {
    fetch(`/do?action=${action}`).then(setActionButtonsTimeout);
}

function setActionButtonsTimeout() {
    document
        .querySelectorAll(SELECTORS.ALL_ACTION_BUTTONS)
        .forEach(buttonEl => {
            buttonEl.disabled = true;
            setTimeout(() => buttonEl.disabled = false, 3000);
        });
}
