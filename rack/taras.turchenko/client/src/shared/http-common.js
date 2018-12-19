import axios from 'axios'

const HTTP = axios.create({
    baseURL: 'http://localhost:3000/api/v1'
})

function postPlay() {
    return HTTP.post('/play')
}

function postFeed() {
    return HTTP.post('/feed')
}

function postRest() {
    return HTTP.post('/rest')
}

function getStats() {
    return HTTP.get('/')
}

export { postPlay, postFeed, postRest, getStats }
