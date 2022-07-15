<template>
  <div class="card">
    <slot>
      <img src="../../assets/icons/arrow.png" alt="arrow up" class="bounce" />
    </slot>
  </div>
</template>

<style scoped>

img {
  max-width: 10%;
}

.card {
  padding: 5px;
  min-height: 350px;
}

.bounce {
  animation: bounce 2s ease infinite;
}

@keyframes bounce {
  70% {
    transform: translateY(0%);
  }
  80% {
    transform: translateY(-15%);
  }
  90% {
    transform: translateY(0%);
  }
  95% {
    transform: translateY(-7%);
  }
  97% {
    transform: translateY(0%);
  }
  99% {
    transform: translateY(-3%);
  }
  100% {
    transform: translateY(0);
  }
}

@media only screen and (max-width: 1390px) {
  .card {
    min-height: 100px;
  }
}
</style>
