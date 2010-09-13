<header>
    <h1>Bliv medlem</h1>
</header>
<?php if(isset($_POST["submit"])): ?>
<p>Du er nu tilmeldt.</p>
<?php else: ?>
<p>
  Der er mange fordele ved at være medlem af pensionistsagen. Du kan vælge
  mellem et bronze-, sølv- eller guldmedlemsskab, som giver rabat på en lang
  række tilbud og produkter (se nedenstående tabel). Hvis du er over 67 år
  får du desuden 5% ekstra rabat på alt, og hvis du bor i København får du
  også 3% rabat på alt elektronisk udstyr!
</p>

<table id="prisliste">
    <caption>Prisliste</caption>
    <thead>
        <tr>
            <th>Medlemstype:</th>
            <th>Pris pr. halvår:</th>
            <th>Rabat:</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Bronze</td>
            <td>100,00 kr.</td>
            <td>0 %</td>
        </tr>
        <tr>
            <td>Sølv</td>
            <td>200,00 kr.</td>
            <td>5 %</td>
        </tr>
        <tr>
            <td>Guld</td>
            <td>300,00 kr.</td>
            <td>10 %</td>
        </tr>
    </tbody>
</table>

<form action="<?= htmlentities($_SERVER["REQUEST_URI"]) ?>" method="post" class="cmxform" id="regform">
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
<?php endif ?>
