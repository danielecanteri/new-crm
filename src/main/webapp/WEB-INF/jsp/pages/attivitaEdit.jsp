<div class="well well-small">
	<i class="icon-remove pull-right"
		ng-click="$parent.attivitaSelected = null"></i>
	<h3>Attivit&agrave; {{attivitaSelected.id}}</h3>
	<div class="well well-small" style="background-color: white">
		<h4>Bancario</h4>
		<div>
			<div class="row-fluid">
				<div class="span5">Nome</div>
				<div class="span7">{{bancario.nome}} {{bancario.cognome}}</div>
			</div>
			<div class="row-fluid">
				<div class="span5">Banca</div>
				<div class="span7">{{bancario.banca}}, filiale di
					{{bancario.filiale}}</div>
			</div>
		</div>
	</div>
	<div class="well well-small" style="background-color: white">
		<h4>Cliente</h4>
		<div>
			<div class="row-fluid">
				<div class="span5">Nome</div>
				<div class="span7">
					<a ng-click="selectCliente(cliente)">{{cliente.nome}}
						{{cliente.cognome}}</a>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span5">Codice Fiscale</div>
				<div class="span7">{{cliente.codiceFiscale}}</div>
			</div>
		</div>
	</div>
	<div class="well well-small" style="background-color: white">
		<h4>Polizza Selezionata</h4>
		<div>
			<div class="row-fluid">
				<div class="span5">Numero</div>
				<div class="span7">{{attivita.polizza.numero}}</div>
			</div>
			<div class="row-fluid">
				<div class="span5">Prodotto</div>
				<div class="span7">{{attivita.polizza.prodotto}}</div>
			</div>
		</div>
	</div>
	<div class="well well-small attivita" style="background-color: white">
		<form class="form-inline">
			<fieldset>
				<legend>Attività</legend>
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="span2">
							<label>Ambito</label>
						</div>
						<div class="span4">
							<input type="text" placeholder="cognome nome" style="width: 100%">
						</div>
						<div class="span2">
							<label>Tipo attività</label>
						</div>
						<div class="span4">
							<input type="text" placeholder="cognome nome" style="width: 100%">
						</div>
					</div>
					<div class="row-fluid">
						<div class="span2">
							<label>Motivo della chiamata</label>
						</div>
						<div class="span4">
							<input type="text" placeholder="cognome nome" style="width: 100%">
						</div>
						<div class="span2"></div>
						<div class="span4"></div>
					</div>
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
					<div class="row-fluid">
						<div class="span2">
							<label>Motivo della disdetta</label>
						</div>
						<div class="span4">
							<input type="text" placeholder="cognome nome" style="width: 100%">
						</div>
						<div class="span2">
							<label>Società</label>
						</div>
						<div class="span4">
							<input type="text" placeholder="cognome nome" style="width: 100%">
						</div>
					</div>
					<div class="row-fluid">
						<div class="span2">
							<label>Assegnata a</label>
						</div>
						<div class="span4">
							<input type="text" placeholder="cognome nome" style="width: 100%">
						</div>
						<div class="span2"></div>
						<div class="span4"></div>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
	<div class="pull-right">
		<button class="btn btn-success" ng-click="viewPolizza(polizza)">SALVA</button>
	</div>
	<div>
		<i>&nbsp;</i>
	</div>
	<div>
		<i>&nbsp;</i>
	</div>
</div>