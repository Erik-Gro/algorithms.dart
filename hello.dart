

void main(List<String>? args) {
  if( args != null && args.isEmpty){
    args = null;
  }
  var name = args == null ? 'noname' : args.join(' ');
  print('Hallo $name!'); 
}
