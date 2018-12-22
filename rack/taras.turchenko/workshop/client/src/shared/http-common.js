import axios from 'axios'

const HTTP = axios.create({
    baseURL: 'http://localhost:3000/api/v1'
});

function postPlay() {
    return postAction('play');
}

function postFeed() {
    return postAction('feed');
}

function postRest() {
    return postAction('rest');
}

function postAction(event) {
    const params = { event };
    return HTTP.post('/action', null, { params })
}

function getStats() {
    return HTTP.get('/stats');
}

export { postPlay, postFeed, postRest, getStats }
