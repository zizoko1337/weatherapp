<template>
  <img id="logo" alt="Vue logo" src="./assets/logo.png" />
  <BaseCard>
    <SearchBar></SearchBar>
    <HelloWorld msg="Warsaw" location="warsaw" />
  </BaseCard>
</template>

<script>


import HelloWorld from './components/HelloWorld.vue';
import BaseCard from '../src/components/ui/BaseCard.vue';
import SearchBar from './components/SearchBar.vue';

export default {
  name: 'App',
  components: {
    HelloWorld,
    BaseCard,
    SearchBar,
  },  
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
body {
  background: rgb(0, 217, 255);
}

@media only screen and (max-width: 650px) {
    #logo {
      max-width: 80%;
    }
}
</style>
