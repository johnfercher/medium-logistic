<style scoped>
.graph {
  border: solid red 1px;
  height: 1080px;
}
.btn {
  margin-top: 20px;
}
</style>

<template>
  <div class="row">
    <div class="col">
      <label for="selectSource">Source</label>
      <select v-model="sourceId" class="form-control" id="selectSource">
        <option v-for="city in cities" v-on:click="setSource(city.id)">{{city.id}}</option>
      </select>
    </div>
    <div class="col">
      <label for="selectTarget">Target</label>
      <select v-model="targetId" class="form-control" id="selectTarget">
        <option v-for="city in cities" v-on:click="setTarget(city.id)">{{city.id}}</option>
      </select>
    </div>
    <div class="col">
      <label for="selectEdgeType">Edge Type</label>
      <select v-model="edgeType" class="form-control" id="selectEdgeType">
        <option v-for="et in edgeTypes" v-on:click="setEdgeType(et)">{{et}}</option>
      </select>
    </div>
    <div class="col">
      <label for="selectWeightType">Weight Type</label>
      <select v-model="weight" class="form-control" id="selectWeightType">
        <option v-for="w in weights" v-on:click="setWeight(w)">{{w}}</option>
      </select>
    </div>
    <div class="col">
      <button type="button" class="btn btn-primary" id="selectTarget" v-on:click="reloadGraph()">Calculate</button>
    </div>
  </div>

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
      cities: [],
      sourceId: "natal",
      targetId: "pelotas",
      edgeType: "",
      edgeTypes: [
          "all",
          "road",
          "air",
          "water",
          "train"
      ],
      weights: [
        "distance",
        "duration",
        "price"
      ],
      weight: "distance",
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
                color: n => n.color,
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
                fontSize: 11,
                scale: 100,
              },
            },
            edge: {
              selectable: true,
              normal: {
                width: 3,
                color: e => e.color,
                dasharray: "0",
                linecap: "butt",
                animate: false,
                animationSpeed: 50,
              },
              gap: 30,
              type: e => e.type,
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
    this.mapQueryTargetSource()
    await this.getCities()
    await this.getGraph()
  },
  methods: {
    async getGraph() {
      var data = {
        source: this.sourceId,
        target: this.targetId,
        edge_type: this.edgeType,
        weight: this.weight,
      }

      if(data.edge_type === "all") {
        data.edge_type = ""
      }

      const graph = await axios.post("http://localhost:8083/graph/shortest_path", data).then(response => {
        return response.data
      }).catch(err => {
        return err
      })

      this.graph.nodes = graph.nodes
      this.graph.edges = graph.edges
      this.graph.layouts.nodes = graph.nodes
    },
    async getCities() {
      const data = await axios.get("http://localhost:8083/cities").then(response => {
        return response.data
      }).catch(err => {
        return err
      })

      this.cities = data.sort(this.compareCity)
    },
    setSource(sourceId) {
      this.sourceId = sourceId
    },
    setTarget(targetId) {
      this.targetId = targetId
    },
    setEdgeType(edgeType) {
      this.edgeType = edgeType
    },
    setWeight(weight) {
      this.weight = weight
    },
    reloadGraph() {
      console.log(this.states)
      var url = "http://localhost:4173/shortest_path?source=" + this.sourceId + "&target=" + this.targetId + "&edge_type=" + this.edgeType + "&weight=" + this.weight
      window.location.href = url;
    },
    mapQueryTargetSource() {
      this.edgeType = this.$route.query.edge_type
      this.sourceId = this.$route.query.source
      this.targetId = this.$route.query.target
      this.weight = this.$route.query.weight
    },
    compareCity(a, b) {
      if(a.id > b.id) {
        return 1
      }

      return -1
    }
  }
}
</script>



