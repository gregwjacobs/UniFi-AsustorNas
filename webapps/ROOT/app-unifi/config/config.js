window.unifiConfig = {
  UnifiAPILocalPath: '/data/dev/api',
  UnifiAPIBasePath: '/api',
  UnifiAPISelfPath: '/api/self',
  UnifiAPIStatusPath: '/status',
  UnifiFileBasePath: '',
  UnifiPrintBasePath: '/print',
  UnifiHotspotHost: '',
  CloudDashboardHost: 'https://unifi.ubnt.com',
  StunHost: 'stun:turn.ubnt.com:3478?transport=udp',
  UnifiCloudHost: 'device-airos.svc.ubnt.com',
  UnifiDevicesEndpoint: '/api/airos/v1/unifi/devices/',
  TurnCredentialsApiEndpoint: '/api/airos/v1/unifi/turn/creds?username=',
  SSOAPIHostname: 'sso.ubnt.com',
  SSOAPIEndpoint: '/api/sso/v1/user/self',
  AccountHostname: 'account.ubnt.com',
  CsrfTokenUrlCheckEnabled: false
};

window.webrtcConfig = {
  StunHost: 'stun:turn.ubnt.com:3478?transport=udp',
  WssHost: 'wss://device-airos.svc.ubnt.com',
  WssEndpoint: '/api/airos/v1/unifi/events',
  UseWebrtc: false,
  VersionCheckEnabled: true,
  AllowLocalRedirect: true
};
