<template>
  <header>
    <div class="brand">
      <router-link :to="{ name: 'home' }">
        <img alt="Vue logo" src="../../assets/logo.png" />
      </router-link>
      <h1>
        <router-link :to="{ name: 'home' }">ue3 API Frontend</router-link>
      </h1>
    </div>
    <div id="nav">
      <router-link :to="{ name: 'home' }">Home</router-link>
    </div>
  </header>
</template>

<style scoped>
header {
  position: fixed;
  left: 0;
  top: 0;
  z-index: 9999;
  width: 100vw;
  display: flex;
  align-items: center;
  justify-content: space-around;
  padding: 0 1.5rem;
  background-color: #06121e;
}

.brand {
  display: flex;
  align-items: center;
}

.brand a {
  text-decoration: none;
}

header img {
  margin-right: -0.25rem;
  height: 3rem;
}

header a {
  color: #ffffff;
}

header a.router-link-active,
header a.router-link-exact-active {
  font-weight: bold;
  text-decoration: none;
}
</style>