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
    <div class="col-1">
      <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
          States
        </button>
        <ul class="dropdown-menu">
          <div v-for="[state, active] of statesPicker" class="col">
            <div class="form-check form-switch">
              <input v-if="active" v-on:click="toggleState(state)" class="form-check-input" type="checkbox" id="flexSwitchCheckDefault" checked>
              <input v-if="!active" v-on:click="toggleState(state)" class="form-check-input" type="checkbox" id="flexSwitchCheckDefault">
              <label class="form-check-label"  for="flexSwitchCheckDefault">{{ state }}</label>
            </div>
          </div>
        </ul>
      </div>
    </div>
    <div class="col-2">
      <label for="selectWeightType">Weight Type</label>
      <select v-model="weight" class="form-control" id="selectWeightType">
        <option v-for="w in weights" v-on:click="setWeight(w)">{{w}}</option>
      </select>
    </div>
    <div class="col-1">
      <button class="btn btn-primary btn-sm" v-on:click="reloadGraph()">Load</button>
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
import router from "@/router";

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
      weights: [
        "distance",
        "duration",
        "price"
      ],
      weight: "distance",
      states: [],
      statesPicker: null,
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
    await this.getStates();
    this.mapQueryStates();
    await this.getGraph(this.states);
  },
  methods: {
    async getGraph() {
      var search = {
        "source_label": "City",
        "target_label": "City",
        "source_city_type": "",
        "target_city_type": "",
        "edge_type": "",
        "states": this.states,
        "weight_type": this.weight
      }

      const graph = await axios.post("http://localhost:8083/graph/search", search).then(response => {
        return response.data
      }).catch(err => {
        return err
      })

      this.graph.nodes = graph.nodes
      this.graph.edges = graph.edges
      this.graph.layouts.nodes = graph.nodes
    },
    async getStates() {
      const data = await axios.get("http://localhost:8083/states").then(response => {
        return response.data
      }).catch(err => {
        return err
      })

      this.statesPicker = new Map();
      data.states.forEach(x => {
        this.statesPicker.set(x, false)
      })
    },
    toggleState(state) {
      this.statesPicker.set(state, !this.statesPicker.get(state))
      this.mapStates();
    },
    mapQueryStates() {
      this.weight = this.$route.query.weight
      var states = this.$route.query.states
      this.states = states.split(",")
      console.log(this.states)
      this.states.forEach(x => this.statesPicker.set(x, true))
    },
    mapStates() {
      this.states = []
      this.statesPicker.forEach((active, key) => {
        if(active === true) {
          this.states.push(key)
        }
      })
    },
    reloadGraph() {
      console.log(this.states)
      var url = "http://localhost:4173?weight=" + this.weight + "&states=" + this.states
      window.location.href = url;
    },
    setWeight(weight) {
      this.weight = weight
    },
  }
}
</script>



