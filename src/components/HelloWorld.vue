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
import axios from 'axios';
import BaseCard from '../components/ui/BaseCard.vue';

export default {
  name: 'HelloWorld',
  components: BaseCard,
  props: {
    msg: String,
    location: String,
  },

  data() {
    return {
      temperature: null,
      humidity: null,
      description: null,
      wind: null,
      // cant be null, some async problem
      icon: '01d',
    };
  },

  beforeMount() {
    axios
      .get(
        'https://api.openweathermap.org/data/2.5/weather?q=warsaw&units=metric&appid=d0ae4343608e7677c30d02fce0a67936'
      )
      .then((response) => {
        this.temperature = response.data.main.temp;
        this.humidity = response.data.main.humidity;
        this.description = response.data.weather[0].description;
        this.wind = response.data.wind.speed;
        this.icon = response.data.weather[0].icon;
      });
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1{
  color: white;
  font-size: 40px;
  font-family: 'Prompt', sans-serif;
}
h2{
  color: white;
  font-size: 31px;
  font-family: 'Prompt', sans-serif;
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
height: 300px;
display: flex;
flex-direction: column;
flex-wrap: wrap;
justify-content: space-around;
align-items: center;
align-content: center;
}

@media only screen and (max-width: 1000px) {

  h1{
  color: white;
  font-size: 60px;
  font-family: 'Prompt', sans-serif;
}
h2{
  color: white;
  font-size: 45px;
  font-family: 'Prompt', sans-serif;
}

img {
  max-width: 400px;
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
height: 600px;
display: flex;
flex-direction: column;
flex-wrap: wrap;
justify-content: space-around;
align-items: center;
align-content: center;
}
}


</style>
