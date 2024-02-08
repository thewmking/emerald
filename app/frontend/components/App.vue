<script setup>
import { ref } from 'vue';
import emeraldUrl from "~/images/emerald.png";

const number = ref(0);

const fetchNum = async () => {
  const response = await fetch("/api/random_number.json");
  const { num } = await response.json();
  number.value = num;
};

fetchNum();
</script>

<template>
  <h1>welcome to emerald</h1>
  <button @click="fetchNum">Retry</button>
  <div v-if="number > 0"> you have won {{ number }} emeralds</div>
  <img :src="emeraldUrl" /> 
</template>