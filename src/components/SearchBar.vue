<template>
  <form @submit.prevent="submitPlace">
    <input type="submit_on_enter" placeholder="🔎 Search location" v-model="location"/>
  </form>
</template>

<script>
export default {

  data(){
    return {
      location: null,
    }
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
</style>
