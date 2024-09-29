import { createRouter, createWebHistory } from 'vue-router'
import CapitalGraph from '@/components/CapitalGraph.vue'
import ShortestPath from '@/components/ShortestPath.vue'

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: '/',
            name: 'Capital',
            component: CapitalGraph
        },
        {
            path: '/shortest_path',
            name: 'ShortestPath',
            component: ShortestPath
        },
    ]
})

export default router