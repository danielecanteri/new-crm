
<div class="well well-small"
	style="background-color: white; margin-bottom: 2px">
	<div ng-show="bancario == null">
		<form ng-submit="doSearchBancario()" class="form-search">
			<fieldset>
				<h5>Ricerca Bancario</h5>
				<input style="margin-bottom: 2px" class="span12" type="text"
					placeholder="cognome nome" ng-model="nomeCognomeBancario"
					ng-submit="doSearchBancario()"> <input
					style="margin-bottom: 2px" class="span6" type="text"
					placeholder="ABI" ng-model="abi"> <input class="span6"
					type="text" placeholder="CAB" ng-model="cab">
				<button class="btn btn-info pull-right" type="submit"
					ng-click="doSearchBancario()" ng-show="nomeCognomeBancario">CERCA</button>
			</fieldset>
		</form>
	</div>
	<div ng-show="bancario != null">
		<i class="icon-remove pull-right" ng-click="bancario = null"></i> <b>Bancario:
		</b>{{bancario.nome}} {{bancario.cognome}}, filiale di
		{{bancario.filiale}}, {{bancario.banca}}
	</div>
</div>
<div class="well well-small"
	style="background-color: white; margin-bottom: 2px">
	<div ng-show="cliente == null">
		<form ng-submit="doSearchCliente()" class="form-search">
			<fieldset>
				<h5>Ricerca Cliente</h5>
				<input style="margin-bottom: 2px" class="span12" type="text"
					placeholder="cognome nome" ng-model="nomeCognomeCliente"> <input
					style="margin-bottom: 2px" class="span8" type="text"
					placeholder="codice fiscale" ng-model="codicefiscale"> <input
					style="margin-bottom: 2px" class="span4" type="text"
					placeholder="NDG" ng-model="ndg">
				<button class="btn btn-info pull-right" type="submit"
					ng-click="doSearchCliente()" ng-show="nomeCognomeCliente">CERCA</button>
			</fieldset>
		</form>
	</div>
	<div ng-show="cliente != null">
		<i class="icon-remove pull-right" ng-click="removeCliente()"></i> <b>Cliente:
		</b>{{cliente.nome}} {{cliente.cognome}},{{cliente.codiceFiscale}}
	</div>
</div>
</div>
<div class="well well-small"
	style="background-color: white; margin-bottom: 2px">
	<div ng-show="attivita.polizza == null">
		<form ng-submit="doSearchPolizza()" class="form-search">
			<fieldset>
				<h5>Polizza</h5>
				<input type="text" placeholder="numero" ng-model="numeroPolizza">
				<input type="text" placeholder="targa" ng-model="targa">
				<button class="btn btn-info " type="submit"
					ng-click="doSearchPolizza()" ng-show="numeroPolizza || targa">CERCA</button>
			</fieldset>
		</form>
	</div>
	<div ng-show="attivita.polizza != null">
		<i class="icon-remove pull-right" ng-click="removePolizza()"></i> <b>Polizza:
		</b>{{attivita.polizza.numero}}, prodotto {{attivita.polizza.prodotto}}
	</div>
</div>
<div class="well well-small attivita" style="background-color: white">
	<form class="form-inline">
		<fieldset>
			<h5>Richiesta</h5>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span2">
						<label>Descrizione</label>
					</div>
					<div class="span10">
						<textarea rows="3"></textarea>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span2">
						<label>Commenti</label>
					</div>
					<div class="span10">
						<textarea rows="3"></textarea>
					</div>
				</div>
			</div>
		</fieldset>
	</form>
</div>