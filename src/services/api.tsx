import axios from 'axios';

const api = axios.create({
    baseURL: "http://localhost:8888/Projects/web/kitchen-chiefs-api"
})

export default api;