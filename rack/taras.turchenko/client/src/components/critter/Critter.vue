<template>
    <div id="critter" >
        <h1>Critter</h1>
        <div class="critter idle" :class="[this.entity.mood, this.entity.event]">
            <div class="ear left"></div>
            <div class="ear right"></div>
            <div class="face">
                <div class="eye left">
                    <div class="lid"></div>
                </div>
                <div class="eye right">
                    <div class="lid"></div>
                </div>
                <div class="mouth"></div>
            </div>
        </div>

        <div class="activities">
            <button class="play" :disabled="this.disabled" @click="play()">Play</button>
            <button class="feed" :disabled="this.disabled" @click="feed()">Feed</button>
            <button class="rest" :disabled="this.disabled" @click="rest()">Rest</button>
        </div>

        <div class="stats">
            <p>Health</p>
            <div class="stat health">
                <div class="progress" :style="{ width: this.entity.health + '%'}"></div>
            </div>
            <p>Happiness</p>
            <div class="stat happy">
                <div class="progress" :style="{ width: this.entity.happiness + '%'}"></div>
            </div>
            <p>Hunger</p>
            <div class="stat hunger">
                <div class="progress" :style="{ width: this.entity.hunger + '%'}"></div>
            </div>
            <p>Sleepiness</p>
            <div class="stat sleep">
                <div class="progress" :style="{ width: this.entity.sleepiness + '%'}"></div>
            </div>
        </div>
    </div>
</template>

<script>
    import { postPlay, postFeed, postRest, getStats } from '../../shared/http-common'

    export default {
        name: 'Critter',
        data: () => {
          return {
              entity: {},
              disabled: false
          }
        },
        mounted() {
            this.disableActions()
            this.updateStats()
            this.enableActions()
        },
        methods: {
            updateStats() {
                this.disableActions()
                getStats().then(response => { this.entity = response.data.entity })
                this.enableActions()
            },
            rest() {
                this.disableActions()
                postRest().then(response => { this.entity = response.data.entity })
                this.enableActions()
            },
            feed() {
                this.disableActions()
                postFeed().then(response => { this.entity = response.data.entity })
                this.enableActions()
            },
            play() {
                this.disableActions()
                postPlay().then(response => { this.entity = response.data.entity })
                this.enableActions()
            },
            disableActions() {
                this.disabled = true
            },
            enableActions() {
                if (this.entity.dead)
                    this.disabled = false
            }
        }
    }
</script>
<style scoped src="./Critter.css"></style>
