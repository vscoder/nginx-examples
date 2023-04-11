var cr = require('crypto');

function gethmac(r) {
  var ip = r.remoteAddress;
  var alg = 'sha256';
  var key = 'someverysecretkeyfromconfigfile';
  var data = ip;
  var result = cr.createHmac(alg,key).update(data).digest('hex');
  //var result = ip;
  //r.return(200, result);
  return result;
}
