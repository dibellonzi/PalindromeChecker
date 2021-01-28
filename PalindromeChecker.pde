public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public String noSpaces(String sWord){
  String s ="";
  for(int i=0; i<sWord.length(); i++){
    String x = sWord.substring(i,i+1);
    if(x.equals(" ")==false){
    s = s+x;
  }
  }
  return s;
}
public String onlyLetters(String sString){
  String s="";
  for(int i=0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))==true){
      s=s+sString.charAt(i);
    }
  }
  return s;
}
public boolean palindrome(String sWord)
{
  String s = "";
 sWord =noSpaces(sWord);
 sWord=onlyLetters(sWord);
 sWord=sWord.toLowerCase();
  for(int i=sWord.length(); i>0; i--){
    String x = sWord.substring(i-1,i);
    s = s+x;
  }
  if(sWord.equals(s)){
    return true;
  }
  return false;
}
public String reverse(String sWord)
{
    String sNew = new String();
    for(int i=sWord.length(); i>0; i--){
    String x = sWord.substring(i-1,i);
    sNew = sNew+x;
  }
    return sNew;
}
