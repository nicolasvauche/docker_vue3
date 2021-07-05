<template>
  <main>
    <Header />
    <router-view />
  </main>
</template>

<script>
import Header from "@/components/layout/Header";

export default {
  name: "App",
  components: {
    Header,
  },
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

section {
  padding: 2rem 1.5rem;
}
</style>
