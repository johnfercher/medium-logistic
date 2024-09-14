import { createApp } from 'vue'
import VNetworkGraph from "v-network-graph"
import "v-network-graph/lib/style.css"
import App from './App.vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap';

import router from './router'

const app = createApp(App)

app.use(VNetworkGraph)
app.use(router)

app.mount('#app')