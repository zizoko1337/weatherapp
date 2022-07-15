<template>
  <img src="../assets/icons/404.png" alt="Error 404 icon" />
  <h1>{{errorMessage}}</h1>
  <h2>{{errorCode}}</h2>
</template>

<script>
export default {
    props: ['error-message','error-code']
};
</script>

<style scoped>
img {
  margin: 20px;
  max-width: 20%;
  -webkit-animation: breathing 5s ease-out infinite normal;
  animation: breathing 5s ease-out infinite normal;
}

h1 {
  color: white;
  font-size: 2rem;
  font-family: 'Prompt', sans-serif;
  transition: 1s;
}

h1:hover {
  transform: scale(1.2);
}

h2 {
  color: white;
  font-size: 1rem;
  font-family: 'Prompt', sans-serif;
  transition: 1s;
}

h2:hover {
  transform: scale(1.2);
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
