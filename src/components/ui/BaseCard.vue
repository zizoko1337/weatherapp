
<template>
<!-- Card component which wil be used in may other components.
Thats why this component will be imported in main.js, so i can access it anywhere.  -->
    <div class="card">
        <slot>

        </slot>
    </div>
</template>

<style scoped>
.card {
  border-radius: 20px 0px 20px 0px;
  border-style: solid;
  border-color: white;
  padding: 1rem;
  margin: 2rem auto;
  max-width: 60%;
  background: rgba(255, 255, 255, 0.208);
}

@media only screen and (max-width: 1000px) {
    .card {
  max-width: 80%;
}
}
</style>