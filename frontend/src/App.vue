<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <div class="row">
        <div class="col">
          <RouterLink class="navbar-brand" to="/">Graph</RouterLink>
        </div>
        <div class="col">
          <RouterLink class="navbar-brand" to="/shortest_path">ShortestPath</RouterLink>
        </div>
      </div>
    </div>
  </nav>

  <div class="container-fluid">
    <RouterView/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>

</style>
