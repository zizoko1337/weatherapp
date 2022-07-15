<template>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Prompt:wght@100&display=swap"
    rel="stylesheet"
  />
  <div id="main" :class="dayNight">
    <img id="logo" alt="Vue logo" src="./assets/logo.png" />
    <BaseCard>
      <SearchBar @update-location="getWeather"></SearchBar>
      <HelloWorld
        v-if="apiFetched"
        :msg="location"
        :temperature="temperature"
        :humidity="humidity"
        :description="description"
        :wind="wind"
        :icon="icon"
      />
      <ErrorInfo
        v-else-if="error"
        :error-message="errorMessage"
        :error-code="errorCode"
      ></ErrorInfo>
      <EmptyCard v-else></EmptyCard>
    </BaseCard>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue';
import BaseCard from '../src/components/ui/BaseCard.vue';
import EmptyCard from '../src/components/ui/EmptyCard.vue';
import ErrorInfo from '../src/components/ErrorInfo.vue';
import SearchBar from './components/SearchBar.vue';
import axios from 'axios';

export default {
  name: 'App',
  components: {
    HelloWorld,
    BaseCard,
    EmptyCard,
    ErrorInfo,
    SearchBar,
  },

  data() {
    return {
      apiFetched: false,
      location: null,
      dayNight: 'day',
      temperature: null,
      humidity: null,
      description: null,
      wind: null,
      // icon cant be null, async problem
      icon: '01n',
      error: false,
      errorMessage: null,
      errorCode: null,
    };
  },

  methods: {
    getWeather(location) {
      axios
        .get(
          // getting data form API key
          'https://api.openweathermap.org/data/2.5/weather?q=' +
            location +
            '&units=metric&appid=d0ae4343608e7677c30d02fce0a67936'
        )
        .then((response) => {
          // allocation of data to proper variables
          this.location = location;
          this.temperature = response.data.main.temp;
          this.humidity = response.data.main.humidity;
          this.description = response.data.weather[0].description;
          this.wind = response.data.wind.speed;
          this.icon = response.data.weather[0].icon;
          this.dayNight = this.icon.at(-1) == 'd' ? 'day' : 'night';
          this.apiFetched = true;
        })
        .catch((error) => {
          this.apiFetched = false;
          // error handling
          this.error = true;
          this.errorMessage = error.message;
          this.errorCode = error.code.toString();
        });
    },
  },
};
</script>

<style>
body {
  margin: 0;
  background-color: #9955ffff;
  height: 100vh;
}

#main {
  height: 100%;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  width: 100%;
  height: 100%;
}

.night {
  background-image: url('../src/assets/NightHorizontal.png');
  background-repeat: no-repeat;
  background-size: 100%;
  padding-top: 60px;
  padding-bottom: 350px;
}

.day {
  background-image: url('../src/assets/DayHorizontal.png');
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
    background-image: url('../src/assets/NightVertical.png');
  }
  .day {
    background-image: url('../src/assets/DayVertical.png');
  }
}
</style>
