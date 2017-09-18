function Cipher(input){
  if(!input){
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
    if(input.match(/[^a-z]/))
      return false;
    else
      return true;
};

Cipher.prototype.encode = function(input) {
    var charset = "abcdefghijklmnopqrstuvwxyz";
    if (this.key.length < input.length){
          this.increaseKeySize(input,this.key);
    }
    strInput = this.turnToAscii(input);
    keyCode = this.turnToAscii(this.key);
    final = keyCode.map(function (num, i){
      if (strInput[i] +num < charset.length)
        return strInput[i] + num;
      else
        return (strInput[i] + num) % charset.length;
    });
    final_str = final.map(function(x) {
      return charset.charAt(x);
    });
    return final_str.join('');
};

Cipher.prototype.decode = function(input) {
    // a = 97;
    // z = 122;
    // strInput = this.turnToAscii(input);
    // keyCode = this.turnToAscii(this.key);
    // final = strInput.map(function (num, i){
    //   if ((keyCode[i] - num + a) <= z && (keyCode[i] - num + a) >= a)
    //     return keyCode[i] - num + a;
    //   else

      // var min = num - a;
      // if ((keyCode[i] + min) <= z)
      //   return keyCode[i] + min;
      // else{
      //   diff = (keyCode[i] + min) - z;
      //   return a-1 + diff;}
    // });
    // final_str = final.map(function(x) {
    //   return String.fromCharCode(x);
    // });
    // console.log(final_str.join(''))
    // console.log("\n")
    // return final_str.join('');
};

Cipher.prototype.increaseKeySize = function(input,key){
  console.log(input.length / key.length)
   this.key = key.repeat(input.length / key.length);
   return this.key;
};

Cipher.prototype.turnToAscii = function(str) {
    var arr = Array.from(str);
    var charset = "abcdefghijklmnopqrstuvwxyz";
    var newArr = [];
    for (i=0; i< arr.length; i++) {
      newArr.push(charset.indexOf(arr[i]));
    }
    return newArr;
    // var newArr = arr.map(function(x) {
    //   return x.charCodeAt(0);
    // });
    // return newArr;
};

module.exports = Cipher;

