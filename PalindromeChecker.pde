public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String s = new String();
  String wordPrime = basicString(word);
  for (int i = wordPrime.length() - 1; i >= 0; i--)
  {
    s += wordPrime.substring(i, i+1);
    // System.out.println(s);
  }
  if (s.equals(wordPrime))
    return true;
  return false;
}

public String basicString(String word)
{
  String s = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if (word.charAt(i) != '!' && word.charAt(i) != ' ' && word.charAt(i) != '\'' && word.charAt(i) != ',')
      s+=word.substring(i, i+1);
  }
  return s.toLowerCase();
}
