<template>
  <div class="hello">
    <base-card><h1>Weather in {{ msg }}</h1></base-card>
  </div>
  <div>
    <h2>{{description}}</h2>
    <ul>
      <li>Temp: {{temperature}}°</li>
      <li>Wind: {{wind}}km/h</li>
      <img :src="require('../assets/icons/' + icon + '.png')" alt="">{{icon}}
    </ul>
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
      info: null,
      temperature: null,
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
        this.info = response.data;
        this.temperature = response.data.main.temp;
        this.description = response.data.weather[0].description;
        this.wind = response.data.wind.speed;
        this.icon = response.data.weather[0].icon;
      });
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
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
img{
  max-width: 100px;
}
</style>
