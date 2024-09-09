#### 1. Build and expose port 3000
```
docker-compose up --build
```

#### 2. Load falco locally with your ruleset
https://falco.org/docs/getting-started/falco-docker-quickstart/


#### 3. Curl for command execution
```
curl 'http://localhost:3000/shell/execute?cmd=ls'
```
