import { defineCollection, z } from 'astro:content';

const galleries = defineCollection({
  type: 'data',
  schema: z.object({
    title: z.string(),
    coverImage: z.string(),
    images: z.array(z.object({
      src: z.string(),
      alt: z.string(),
    })),
  }),
});

export const collections = { galleries };
