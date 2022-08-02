void setup () {
 String str = "I am Happy to See You.";
 String capstr = All_uppercase (str);
 println(capstr);
}


String All_uppercase(String x) {
String cap ="";
int a = 0;

for ( char b = x.charAt(a); a < x.length(); a++)

{
 b = x.charAt(a);
  if( x.charAt(a) >= 'a' && x.charAt(a) <= 'z')

{
  b -= 32;
}
 
  cap += b;

}

return cap;

}
