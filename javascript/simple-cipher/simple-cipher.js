function Cipher(input){
  if(input == null){
    this.key = this.randomString();
    return this.key;
  }
  else if(!this.isValid(input)){
    throw new Error('Bad key');
  }
  else {
    this.key = input;
    return this.key;
  }
}

Cipher.prototype.randomString = function(length=10) {
    var str = "";
    var charset = "abcdefghijklmnopqrstuvwxyz";
    for(i=0; i< length; i++) {
      str += charset.charAt(Math.floor(Math.random() * charset.length));
    }
    return str;
};

Cipher.prototype.isValid = function(input) {
    if(input.match(/[a-z]/))
      return true;
    else
      return false;
};

Cipher.prototype.encode = function(input) {
  if (this.key.length < input.length)
        this.increaseKeySize(input,this.key);
  strInput = this.turnToAscii(input);
  keyCode = this.turnToAscii(this.key);
  final = keyCode.map(function (num, i){
    if (strInput[i] + num < 26)
      return strInput[i] + num;
    else
      return (strInput[i] + num) % 26;
  });
  return this.turnToLetters(final);
};

Cipher.prototype.decode = function(input) {
  strInput = this.turnToAscii(input);
  keyCode = this.turnToAscii(this.key);
  final = strInput.map(function (num, i){
    if (num - keyCode[i] >= 0)
      return num - keyCode[i];
    else
      return (num - keyCode[i]) + 26;
  });
  return this.turnToLetters(final);
};

Cipher.prototype.increaseKeySize = function(input,key){
   newKey = key.repeat(Math.floor(input.length / key.length)) +
            key.substring(0,input.length % key.length);
   this.key = newKey;
   return this.key;
};

Cipher.prototype.turnToAscii = function(str) {
    var arr = Array.from(str);
      return arr.map(function(x) {
      return x.charCodeAt(0) - 97;
    });
};

Cipher.prototype.turnToLetters =function(arr) {
  return arr.map(function(x) {
      return String.fromCharCode(x + 97);
  }).join('');
};

module.exports = Cipher;

