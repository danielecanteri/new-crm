<h2>{{cliente.nome}} {{cliente.cognome}}</h2>
<h4>Polizze</h4>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Numero</th>
			<th>Prodotto</th>
			<th>Decorrenza</th>
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="polizza in cliente.polizze">
		<td>{{polizza.numero}}</td>
		<td>{{polizza.prodotto}}</td>
		<td>{{polizza.decorrenza}}</td>
		<td>
			<div class="btn-group" ng-show="attivita.polizza == null">
				<button class="btn btn-success btn-small"
					ng-click="selectPolizza(polizza)">SELEZIONA</button>
				<button class="btn dropdown-toggle btn-success btn-small"
					data-toggle="dropdown">
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#" ng-click="viewPolizza(polizza)">VISUALIZZA</a></li>
				</ul>
			</div>
			<div class="btn-group" ng-show="attivita.polizza != null">
				<button class="btn btn-info btn-small" ng-click="viewPolizza(polizza)">VISUALIZZA</button>
				<button class="btn dropdown-toggle btn-info btn-small"
					data-toggle="dropdown">
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#" ng-click="selectPolizza(polizza)">SELEZIONA</a></li>
				</ul>
			</div>
		</td>
	</tr>
</table>