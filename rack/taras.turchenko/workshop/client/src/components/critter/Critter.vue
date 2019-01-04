<template>
    <div>
        <h1 class="critter__name">Critter</h1>

        <div class="critter idle" :class="critterClasses">
            <div class="ear ear--left"></div>
            <div class="ear ear--right"></div>

            <div class="face">
                <div class="eye eye--left">
                    <div class="lid"></div>
                </div>
                <div class="eye eye--right">
                    <div class="lid"></div>
                </div>

                <div class="mouth"></div>
            </div>
        </div>

        <div class="activities">
            <button
                    class="activities__button activities__button--play"
                    type="button"
                    :disabled="disabled"
                    @click="play">
                Play
            </button>
            <button
                    class="activities__button activities__button--feed"
                    type="button"
                    :disabled="disabled"
                    @click="feed">
                Feed
            </button>
            <button
                    class="activities__button activities__button--rest"
                    type="button"
                    :disabled="disabled"
                    @click="rest">
                Rest
            </button>
        </div>

        <ul class="stats">
            <li class="stats__item">
                <p class="stats__item__name">Health</p>
                <div class="stat health">
                    <div class="stat__progress" :style="getProgressStyles('health')"></div>
                </div>
            </li>

            <li class="stats__item">
                <p class="stats__item__name">Happiness</p>
                <div class="stat">
                    <div class="stat__progress" :style="getProgressStyles('happiness')"></div>
                </div>

            </li>
            <li class="stats__item">
                <p class="stats__item__name">Hunger</p>
                <div class="stat">
                    <div class="stat__progress" :style="getProgressStyles('hunger')"></div>
                </div>

            </li>
            <li class="stats__item">
                <p class="stats__item__name">Sleepiness</p>
                <div class="stat">
                    <div class="stat__progress" :style="getProgressStyles('sleepiness')"></div>
                </div>
            </li>
        </ul>
    </div>
</template>

<script>
    import { postPlay, postFeed, postRest, getStats } from '../../shared/http-common'

    export default {
        name: 'Critter',

        data() {
          return {
              entity: {},
              disabled: false
          };
        },

        mounted() {
            const syncId = setInterval(() => {
                if (this.entity.dead) {
                    clearInterval(syncId);
                } else {
                    this.sendRequest(getStats)
                }
            }, 2000);
        },

        methods: {
            rest() {
                this.sendRequest(postRest);
            },

            feed() {
                this.sendRequest(postFeed)
            },

            play() {
                this.sendRequest(postPlay);
            },

            sendRequest(action) {
                this.disableActions();
                action()
                    .then((response) => this.entity = response.data.entity)
                    .finally(this.enableActions)
                    .catch(({message}) => alert(message));
            },

            disableActions() {
                this.disabled = true
            },

            enableActions() {
                this.disabled = this.entity.dead;
            },

            getProgressStyles(type) {
                return { width: this.entity[type] + '%'}
            }
        },

        computed: {
            critterClasses() {
                return [this.entity.mood, this.entity.event]
            }
        }
    }
</script>

<style scoped src="./Critter.css"></style>
