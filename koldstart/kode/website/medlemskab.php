<p>
  Der er mange fordele ved at være medlem af pensionistsagen. Du kan vælge mellem
  bronze (0% rabat), sølv (5% rabat) og guld (10%) som giver rabat på en lang række
  tilbud og produkter. Hvis du er over 67 år får du desuden 5% ekstra rabat på alt,
  og hvis du bor i København får du også 3% rabat på alt elektronisk udstyr!
</p>
<form action="welcome.php" method="get" id="regform">
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
  <button type="submit">Fuldfør tilmelding</button>
</fieldset>
</form>
