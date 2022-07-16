<template>
  <div class="hello">
    <base-card
      ><h1>Weather in {{ msg }}</h1></base-card
    >
  </div>
  <div class="container">
    <div class="weather-info">
      <h2>{{ description }}</h2>
      <img :src="require('../assets/icons/' + icon + '.png')" alt="" />
    </div>
    <div class="weather-info">
      <h2>Temp: {{ temperature }}°</h2>
      <h2>Humidity: {{ humidity }}%</h2>
      <h2>Wind: {{ wind }}km/h</h2>
    </div>
  </div>
</template>

<script>
import BaseCard from '../components/ui/BaseCard.vue';

export default {
  name: 'WeatherDisplay',

  components: BaseCard,
  props: [
    'msg',
    'location',
    'temperature',
    'humidity',
    'description',
    'wind',
    'icon',
  ],
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  color: white;
  font-size: 40px;
  font-family: 'Prompt', sans-serif;
  transition: 1s;
}
h1:hover {
  transform: scale(1.2);
}
h2 {
  color: white;
  font-size: 31px;
  font-family: 'Prompt', sans-serif;
  transition: 1s;
}
h2:hover {
  transform: scale(1.2);
}

ul {
  list-style-type: none;
  padding: 0;
}
li {
  margin: 0 10px;
}
a {
  color: #42b983;
}
h2 {
  text-transform: capitalize;
}
img {
  max-width: 200px;
  -webkit-animation: breathing 5s ease-out infinite normal;
  animation: breathing 5s ease-out infinite normal;
}
.container {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: flex-start;
  align-content: flex-start;
}

.weather-info {
  height: auto;
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
  justify-content: space-around;
  align-items: center;
  align-content: center;
}

@media only screen and (max-width: 1390px) {
  h1 {
    color: white;
    font-size: 2rem;
    font-family: 'Prompt', sans-serif;
  }

  h2 {
    color: white;
    font-size: 1rem;
    font-family: 'Prompt', sans-serif;
  }

  .container {
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    justify-content: space-around;
    align-items: center;
    align-content: center;
  }

  .weather-info {
    height: auto;
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    justify-content: space-around;
    align-items: center;
    align-content: center;
  }
}

@-webkit-keyframes breathing {
  0% {
    -webkit-transform: scale(0.9);
    transform: scale(0.9);
  }

  25% {
    -webkit-transform: scale(1);
    transform: scale(1);
  }

  60% {
    -webkit-transform: scale(0.9);
    transform: scale(0.9);
  }

  100% {
    -webkit-transform: scale(0.9);
    transform: scale(0.9);
  }
}

@keyframes breathing {
  0% {
    -webkit-transform: scale(0.9);
    -ms-transform: scale(0.9);
    transform: scale(0.9);
  }

  25% {
    -webkit-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
  }

  60% {
    -webkit-transform: scale(0.9);
    -ms-transform: scale(0.9);
    transform: scale(0.9);
  }

  100% {
    -webkit-transform: scale(0.9);
    -ms-transform: scale(0.9);
    transform: scale(0.9);
  }
}
</style>
