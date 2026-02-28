// frontend_dsi6/src/environments/environment.prod.ts
export const environment = {
  production: true,
  // ⚠️ ESTA URL SE REEMPLAZARÁ AUTOMÁTICAMENTE AL HACER BUILD
  apiUrl: '/api',  // Railway resolverá esto automáticamente
  logLevel: 'error',
  apiUrlPHP: '/php' // Proxy a PHP service
};