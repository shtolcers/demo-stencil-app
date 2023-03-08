# Stencil store bug demo

The purpose of the demo is to demonstrate the inconsistent behavior of StencilJs in combination with `@stencil/store` (depending of the output target and use of the local state).

The project contains 3 completely separate components. All 3 are almost identical. Main differences:

1. Built with output target's type set to `dist`. The component is similar to one in the StencilJs guide: <https://stenciljs.com/docs/stencil-store>
2. Identical 2 no.2, except component uses local state variable.
3. Identical to no. 3, except the output target's type is set to `dist-custom-elements`

# Running the project

To run the project: `./start.sh -ci' (the logic of the start script is self-explanatory).
Alternatively, one could manually build each component and serve the top-level `index.html` file.

# Expected behavior

One should observe that only the second component reacts to state changes and re-renders accordingly.

# Preferrable behavior

All components behave the same way (same as the 2nd component)
