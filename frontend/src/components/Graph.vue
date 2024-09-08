<style scoped>
.graph {
  border: solid red 1px;
  height: 1080px;
}
</style>

<template>
  <div v-if="graph !== null">
    <v-network-graph
        class="graph"
        :zoom-level="0.5"
        :nodes="graph.nodes"
        :layouts="graph.layouts"
        :edges="graph.edges"
        :configs="configs"
    >
      <template #edge-label="{ edge, ...slotProps }">
        <v-edge-label
            :text="edge.label"
            align="center"
            vertical-align="above"
            v-bind="slotProps" />
      </template>
    </v-network-graph>
  </div>
  <div v-if="graph === null">
    Loading...
  </div>
</template>

<script>
import axios from "axios";
import VNetworkGraph from "v-network-graph"
import * as vNG from "v-network-graph"
import {reactive} from "vue";

export default {
  name: 'HelloWorld',
  props: {
    VNetworkGraph,
  },
  data() {
    return {
      graph: {
        nodes: [],
        edges: [],
        layouts: {
          nodes: [],
        }
      },
      configs: reactive(
          vNG.defineConfigs({
            node: {
              normal: {
                radius: n => n.radius,
                borderRadius: n => n.border_radius,
                type: n => n.type,
                width: n => n.width,
                height: n => n.height,
                x: n => n.x,
                y: n => n.y,
              },
              label: {
                visible: true,
                color: "#ffffff",
                direction: "center",
                fontSize: 10,
                scale: 100,
              },
            },
            edge: {
              selectable: true,
              normal: {
                width: 3,
                color: "#4466cc",
                dasharray: "0",
                linecap: "butt",
                animate: false,
                animationSpeed: 50,
              },
              gap: 5,
              type: "straight",
              margin: 10,
              marker: {
                source: {
                  type: "none",
                  width: 4,
                  height: 4,
                  margin: -1,
                  offset: 0,
                  units: "strokeWidth",
                  color: null,
                },
                target: {
                  type: "none",
                  width: 4,
                  height: 4,
                  margin: -1,
                  offset: 0,
                  units: "strokeWidth",
                  color: null,
                },
              },
            },
          })
      )
    }
  },
  async mounted() {
    await this.getGraph()
  },
  methods: {
    async getGraph() {
      const graph = await axios.get("http://localhost:8083/graph").then(response => {
        return response.data
      }).catch(err => {
        return err
      })

      this.graph.nodes = graph.nodes
      this.graph.edges = graph.edges
      this.graph.layouts.nodes = graph.nodes
    }
  }
}
</script>



