<template>
  <main>
    <header>
      <h1>Vue3 API Frontend</h1>
      <div id="nav">
        <router-link :to="{ name: 'home' }">Home</router-link>
      </div>
    </header>
    <router-view />
  </main>
</template>

<script>
export default {
  name: "App",
  components: {},
};
</script>

<style>
body {
  margin: 0;
  color: #ffffff;
  background-color: #2c3e50;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}

header a {
  color: #ffffff;
}

section {
  padding: 2rem 1.5rem;
}
</style>
