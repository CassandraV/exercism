class DnaTranscriber{
  turnValues(val){
    switch(val) {
      case 'C':
        return 'G';
      case 'G':
        return 'C';
      case 'A':
        return 'U';
      case 'T':
        return 'A';
      }
  }

  toRna(input) {
    if(input.match(/[^ATCG]/))
      throw new Error('Invalid input')
    var str = Array.from(input)
    var newStr = str.map(this.turnValues)
   return newStr.join('');
  }
}


module.exports = DnaTranscriber;

