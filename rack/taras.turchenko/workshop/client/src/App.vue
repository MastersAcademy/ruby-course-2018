<template>
    <Critter/>
</template>

<script>
    import Critter from './components/critter/Critter.vue'

    export default {
        name: 'app',
        components: { Critter }
    }
</script>

<style>
    *, *::before, *::after {
        box-sizing: border-box;
    }
</style>