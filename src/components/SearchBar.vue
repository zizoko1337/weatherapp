<template>
<div data-ikol-contact data-display-mode="list"></div>
  <form @submit.prevent="submitPlace">
    <input
      type="submit_on_enter"
      placeholder="🔎 Search location"
      v-model="location"
    />
  </form>
</template>

<script>
export default {
  data() {
    return {
      location: null,
    };
  },

  methods: {
    submitPlace() {
      this.$emit('update-location', this.location);
    },
  },
};
</script>

<style scoped>
input {
  font-family: 'Prompt', sans-serif;
  border-style: solid;
  border-color: white;
  border-radius: 20px 0px 20px 0px;
  width: 80%;
  color: white;
  font-size: 2rem;
  background-color: rgba(255, 255, 255, 0.192);
  text-align: center;
}

input::placeholder{
  color: white;
}

@media only screen and (max-width: 1390px) {
  input {
    font-size: 1rem;
  }
}
</style>
