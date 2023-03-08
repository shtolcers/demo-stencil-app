import { Config } from '@stencil/core';

export const config: Config = {
  namespace: 'test-component2',
  outputTargets: [
    {
      type: 'dist-custom-elements',
      empty: true,
      externalRuntime: false,
      generateTypeDeclarations: false,
      customElementsExportBehavior: 'auto-define-custom-elements',
    },
    // {
    //   type: 'www',
    //   serviceWorker: null, // disable service workers
    // },
  ],
};
