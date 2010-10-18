<%inherit file="/main.mako"/>
<header> 
    <h1>Bliv medlem</h1> 
</header> 
<p> 
  Der er mange fordele ved at være medlem af pensionistsagen. Du kan vælge
  mellem et bronze-, sølv- eller guldmedlemsskab, som giver rabat på en lang
  række tilbud og produkter (se nedenstående tabel). Hvis du er over 67 år
  får du desuden 5% ekstra rabat på alt, og hvis du bor i København får du
  også 3% rabat på alt elektronisk udstyr!
</p> 
 
<table id="prisliste"> 
    <caption>Medlemskabstyper</caption> 
    <tbody> 
        <tr> 
            <td class="medalicon"><img src="/static/images/bronze_medal.png"/></td> 
            <td>Bronze</td> 
            <td>0 % rabat</td> 
            <td>Ingen yderligere fordele</td>
        </tr> 
        <tr> 
            <td class="medalicon"><img src="/static/images/silver_medal.png"/></td> 
            <td>Sølv</td> 
            <td>5 % rabat</td> 
            <td>Månedligt frit PC-kursus</td>
        </tr> 
        <tr> 
            <td class="medalicon"><img src="/static/images/gold_medal.png"/></td> 
            <td>Guld</td> 
            <td>10 % rabat</td> 
            <td>Fri lånepanda hver weekend</td>
        </tr>
        <tr>
            <td style="border: none"></td> 
            <td style="border: none"></td> 
            <td style="border: none"></td> 
            <td id="moreMemberInfo"><a href="/medlemsskab">Se alle fordele</a></td>
        </tr>
    </tbody> 
</table> 
 
<form action="${url_for("member.signup_done", method="POST")}" method="post" class="cmxform" id="regform"> 
<fieldset> 
  <legend>Angiv medlemsoplysninger</legend> 
  <ol> 
    <li> 
      <label for="navn">Navn<em>*</em></label> 
      <input type="text" id="navn" name="navn" /> 
    </li> 
     <li> 
      <label for="foedselsdag">Fødselsdato (dd/mm/yyyy)<em>*</em></label> 
      <input type="text" name="foedselsdag" id="foedselsdag" /> 
    </li> 
    <li> 
      <label for="address">Addresse<em>*</em></label> 
      <input type="text" name="address" id="address" /> 
    </li> 
    <li> 
      <label for="town-city">By<em>*</em></label> 
      <input type="input" name="town-city" id="town-city" /> 
    </li> 
    <li> 
      <label for="postnummer">Postnummer<em>*</em></label> 
      <input type="input" name="postnummer" id="postnummer" maxlength="4" /> 
    </li> 
   <li> 
      <label for="telefon">Telefonnr.</label> 
      <input type="input" name="name" id="telefon" maxlength="6" /> 
    </li> 
    <li> 
      <label for="medlemskab">Medlemskab</label> 
      <select name="medlemskab" id="medlemsskab"> 
        <option value="bronze">Bronze (0%)</option> 
        <option value="soelv">Sølv (5%)</option> 
        <option value="guld">Guld (10%)</option> 
      </select> 
    </li> 
  </ol> 
  <button type="submit" name="submit">Fuldfør tilmelding</button> 
</fieldset> 
</form> 
 
