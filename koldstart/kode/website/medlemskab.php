<div>
  <p>
    Der er mange fordele ved at være medlem af pensionistsagen. Du kan vælge mellem
    bronze (0% rabat), sølv (5% rabat) og guld (10%) som giver rabat på en lang række
    tilbud og produkter. Hvis du er over 67 år får du desuden 5% ekstra rabat på alt,
    og hvis du bor i København får du også 3% rabat på alt elektronisk udstyr!
  </p>
  <form action="welcome.php" method="get">
  <fieldset>
    <legend>Angiv medlemsoplysninger</legend>
    <ol>
      <li>
        <label for="navn">Navn<em>*</em></label>
        <input id="navn" />
      </li>
       <li>
        <label for="foedselsdag">Fødselsdato (dd/mm/yyyy)<em>*</em></label>
        <input id="foedselsdag" />
      </li>
      <li>
        <label for="address1">Addresse<em>*</em></label>
        <input id="address1" />
      </li>
      <li>
        <label for="town-city">By<em>*</em></label>
        <input id="town-city" />
      </li>
      <li>
        <label for="postnummer">Postnummer<em>*</em></label>
        <input id="postnummer" />
      </li>
     <li>
        <label for="telefon">Telefonnr.</label>
        <input id="telefon" />
      </li>
      <li>
        <label for="medlemskab">Medlemskab</label>
        <select name="medlemskab">
          <option value="bronze">Bronze (0%)</option>
          <option value="soelv">Sølv (5%)</option>
          <option value="guld">Guld (10%)</option>
        </select>
      </li>
    </ol>
  </fieldset>
  </form>
</div>  
