<template>
  <div class="slidev-layout cover" :style="style">
    <div class="my-auto w-full">
      <slot />
      <div class="absolute bottom-12" v-if="coverAuthor || coverDate">
        <TextWithOptionalLink :link="coverAuthorUrl1" :text="coverAuthor1" />,
        <TextWithOptionalLink :link="coverAuthorUrl2" :text="coverAuthor2" />, and
        <TextWithOptionalLink :link="coverAuthorUrl3" :text="coverAuthor3" /><br><br>
        <span class="text-xs" v-if="coverDate">{{ coverAuthor && coverDate ? `, ${coverDate}` : coverDate }}</span>
      </div>
      <div class="absolute bottom-0 font-extralight mb-1 mr-2 right-0 text-xs" v-if="coverBackgroundSource">
        <TextWithOptionalLink :link="coverBackgroundSourceUrl" :text="coverBackgroundSource" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { computed } from 'vue';
import { handleBackground } from '../layout-helper';

const { coverBackgroundUrl } = withDefaults(
  defineProps<{
    coverAuthor1?: string;
    coverAuthor2?: string;
    coverAuthor3?: string;
    coverAuthorUrl1?: string;
    coverAuthorUrl2?: string;
    coverAuthorUrl3?: string;
    coverBackgroundUrl?: string;
    coverBackgroundSource?: string;
    coverBackgroundSourceUrl?: string;
    coverDate?: string | Date;
  }>(),
  { coverDate: new Date().toLocaleDateString() },
);

const style = computed(() => handleBackground(coverBackgroundUrl, true));
</script>
