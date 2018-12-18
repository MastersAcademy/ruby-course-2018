# Rack Tamagochi
To start a project run `docker-compose up`
Frontend server will be up at `http://localhost:8080`
Backend server will be up at `http://localhost:3000`

##### APIDOC:

- get current stats `GET /api/v1/`
- rest `POST /api/v1/rest/`
- feed `POST /api/v1/feed/`
- play `POST /api/v1/play/`

##### Success response format 

```
{
  health: Integer,
  hunger: Integer,
  happiness: Integer,
  sleepiness: Integer,
  mood: String(values allowed: sad, worried, happy),
  event: String(values allowed: idle, play, feed, rest),
  dead: Boolean,
}
```

##### Error response format

```
{
  error: Boolean,
  message: String
}
```


##### Cors-free headers 
```
{
  'Access-Control-Allow-Methods' => '*',
  'Access-Control-Allow-Origin' => '*',
  'Access-Control-Allow-Headers' => '*',
  'Content-Type' => 'application/json'
}
```