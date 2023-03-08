import { Config } from '@stencil/core';

export const config: Config = {
  namespace: 'test-component1',
  outputTargets: [
    {
      type: 'dist',
      esmLoaderPath: '../loader',
      empty: true,
    },
    {
      type: 'www',
      serviceWorker: null, // disable service workers
    },
  ],
};
