<template>
  <section class="posts">
    <h2>Post details from SF5 API:</h2>

    <p v-if="loading">Loading…</p>
    <p v-if="error">{{ error }}</p>

    <div class="post" v-if="!loading && data">
      <figure class="post-image">
        <img :src="data.image" :alt="data.title" />
      </figure>
      <h3 class="post-title">{{ data.title }}</h3>
      <p class="post-content">{{ data.content }}</p>
    </div>
  </section>
</template>

<script>
import { ref, onMounted } from "vue";
import axios from "axios";
import { useRoute } from "vue-router";

export default {
  name: "Post",
  props: {},
  setup() {
    const data = ref(null);
    const loading = ref(true);
    const error = ref(null);
    const route = useRoute();

    function fetchData() {
      loading.value = true;
      return axios
        .get("http://localhost:8088/api/" + route.params.id)
        .then((response) => {
          loading.value = false;
          data.value = response.data;
        })
        .catch((err) => {
          loading.value = false;
          error.value = err.message;
        });
    }

    onMounted(() => {
      fetchData();
    });

    return {
      data,
      loading,
      error,
    };
  },
};
</script>

<style scoped>
.post {
  margin: 0 auto;
  width: 50%;
}

.post-image {
  margin: 0;
  height: 50vh;
  overflow: hidden;
}

.post-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}
</style>