// This file tells TypeScript to treat 'node:async_hooks' as an empty module

declare module 'node:async_hooks' {
  const nothing: any;
  export default nothing;
} 