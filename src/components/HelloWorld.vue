<template>
  <div class="hello">
    <base-card><h1>{{ msg }}</h1></base-card>
  </div>
  <div>
    <h2>{{info?.weather[0]?.description}}</h2>
    <ul>
      <li>temperature: {{info?.main?.temp}}</li>
      <li>wind</li>
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
    };
  },

  beforeMount() {
    axios
      .get(
        'https://api.openweathermap.org/data/2.5/weather?q=warsaw&units=metric&appid=d0ae4343608e7677c30d02fce0a67936'
      )
      .then((response) => {
        this.info = response.data;
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
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
h2 {
  text-transform: capitalize;
}
</style>
