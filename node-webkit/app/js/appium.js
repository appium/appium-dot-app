var appium = require('appium');

process.env['Appium_app'] = '1';

var args = {
    verbose: '1'
    , udid: null
    , address: '127.0.0.1'
    , port: 4723
    , webhook: "9003"
    , remove: true
  };
  
appium.run(args, function() { console.log('Rock and roll.'.grey); });
