// frontend_dsi6/src/environments/environment.prod.ts
export const environment = {
  production: true,
  // ⚠️ ESTA URL SE REEMPLAZARÁ AUTOMÁTICAMENTE AL HACER BUILD
  apiUrl: 'https://backendvina-production.up.railway.app/api',  // Railway resolverá esto automáticamente
  logLevel: 'error',
  apiUrlPHP: 'https://sunatphp-production.up.railway.app'  // ✅ SIN /php 
};