module.exports = {
  config = {
    fontFamily: 'Fira Code, Monaco, Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    termCSS: `
        x-screen x-row {
          font-variant-ligatures: initial;
      }
    `,

    hyperStatusLine: {
      dirtyColor: '#d65d0e',
      arrowsColor: '#d65d0e',
      fontFamily: '"Fira Code"',
    }
  },

  plugins: [
    'hyper-statusline',
    'hyperterm-cursor',
    'hyperterm-gruvbox-dark',
    'hypercwd',
    'hyper-pane',
    'hyper-tabs-enhanced'
  ],
}
