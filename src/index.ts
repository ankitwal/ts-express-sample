import {server } from './server'

const port = parseInt( process.env.PORT || '', 10) || 8000;

server.listen(port);
