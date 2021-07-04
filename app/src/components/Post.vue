<template>
  <section class="posts">
    <h2>Posts from SF5 API (axios):</h2>

    <p v-if="loading">Still loading..</p>
    <p v-if="error">{{ error }}</p>

    <div class="thumbnails" v-if="!loading && data && data.length">
      <div class="thumbnail" v-for="post of data" :key="post.id">
        <figure class="thumbnail-image">
          <img :src="post.image" :alt="post.title" />
        </figure>
        <h3 class="thumbnail-title">{{ post.title }}</h3>
        <p class="thumbnail-excerpt">
          {{
            post.content.length > 75
              ? post.content.substring(0, 75) + "…"
              : post.content
          }}
        </p>
      </div>
    </div>
  </section>
</template>

<script>
import { ref, onMounted } from "vue";
import axios from "axios";

export default {
  name: "Posts",
  props: {},
  setup() {
    const data = ref(null);
    const loading = ref(true);
    const error = ref(null);

    function fetchData() {
      loading.value = true;
      return axios
        .get("http://localhost:8088/api")
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

<style>
.thumbnails {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-gap: 1.5rem;
}

.thumbnail {
  border: 1px solid #cfcfcf;
  border-radius: 0.5rem;
  color: #2c3e50;
  background-color: #ffffff;
}

.thumbnail-image {
  margin: 0;
  height: 150px;
  overflow: hidden;
  border-top-left-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
}

.thumbnail-image img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-top-left-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
  transform: scale(110%);
  opacity: 0.85;
  transition: all 0.6s;
}

.thumbnail:hover .thumbnail-image img {
  transform: scale(100%);
  opacity: 1;
}

.thumbnail-title {
  padding: 0 0.5rem;
}

.thumbnail-excerpt {
  padding: 0 0.5rem;
}
</style>