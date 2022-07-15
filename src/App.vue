<template>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Prompt:wght@100&display=swap"
    rel="stylesheet"
  />
  <div id="main"  :class="dayNight">
    <img id="logo" alt="Vue logo" src="./assets/logo.png" />
    <BaseCard>
      <SearchBar></SearchBar>
      <HelloWorld  msg="Warsaw" @isDay="calcDay(icon)" location="warsaw" />
    </BaseCard>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue';
import BaseCard from '../src/components/ui/BaseCard.vue';
import SearchBar from './components/SearchBar.vue';

export default {
  name: 'App',
  emits: ['isDay'],
  components: {
    HelloWorld,
    BaseCard,
    SearchBar,
  },
  data() {
    return {
      dayNight: null,
    }
  },
  
  methods:{
    async calcDay(icon){
      this.dayNight = icon.at(-1) == 'd' ? 'day' : 'night';
      console.log(icon.at(-1));
    }
  },

  mounted(){
    console.log('mounted ' +this.isNight);
    this.dayNight = (new Date().getHours() < 19 && new Date().getHours() > 6) ? 'day' : 'night';
  }
};
</script>

<style>
body {
  margin: 0;
  background-color: black;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.night {
  background-image: url('../src/assets/night1.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
  padding-top: 60px;
  padding-bottom: 350px;
}

.day{
  background-image: url('../src/assets/day.jpg');
  background-repeat: no-repeat;
  background-size: 100%;
  padding-top: 60px;
  padding-bottom: 350px;
}

@media only screen and (max-width: 650px) {
  #logo {
    max-width: 80%;
    margin-top: 60px;
  }
}
@media only screen and (max-width: 1390px) {
  .night {
    background-image: url('../src/assets/night.jpg');
  }
  .day {
    background-image: url('../src/assets/day1.jpg');
  }
}
@media only screen and (max-width: 984px) {
  .night {
    background-size: auto;
  }
  
}
</style>
