import { defineConfig } from 'vite';

// import createReScriptPlugin from '@jihchi/vite-plugin-rescript';

export default defineConfig({
  // plugins: [createReScriptPlugin()],
  test: {
    include: ["**/tests/**/*.test.bs.js"]
  }
});
