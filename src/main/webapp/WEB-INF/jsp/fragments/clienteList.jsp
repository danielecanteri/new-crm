<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Nome</th>
			<th>Cognome</th>
			<th>Codice Fiscale</th>
			<th>Data Nascita</th>
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="cliente in tab.clienti">
		<td>{{cliente.nome}}</td>
		<td>{{cliente.cognome}}</td>
		<td>{{cliente.codiceFiscale}}</td>
		<td>{{cliente.dataNascita}}</td>
		<td><button class="btn btn-success btn-small" type="button"
				ng-click="selectCliente(cliente)">SELEZIONA</button></td>
	</tr>
</table>