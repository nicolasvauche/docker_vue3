<template>
  <main>
    <header>
      <h1>Vue3 API Frontend</h1>
    </header>
    <Post />
  </main>
</template>

<script>
import Post from "@/components/Post";

export default {
  name: "App",
  components: {
    Post,
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
