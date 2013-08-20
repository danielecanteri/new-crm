<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Numero</th>
			<th>Prodotto</th>
			<th>Decorrenza</th>
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="polizza in tab.polizze">
		<td>{{polizza.numero}}</td>
		<td>{{polizza.prodotto}}</td>
		<td>{{polizza.decorrenza}}</td>
		<td><button class="btn btn-success btn-small" type="button"
				ng-click="selectPolizza(polizza)">SELEZIONA</button></td>
	</tr>
</table>