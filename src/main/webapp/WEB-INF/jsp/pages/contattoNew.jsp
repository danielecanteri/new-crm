					<div class="well well-small" style="background-color: white">
						<div ng-show="bancario == null">
							<form ng-submit="doSearchBancario()" class="form-search">
								<fieldset>
									<h5>Ricerca Bancario</h5>
									<input type="text" placeholder="cognome nome"
										ng-model="nomeCognomeBancario">
									<button class="btn btn-info " type="button"
										ng-click="doSearchBancario()" ng-show="nomeCognomeBancario">CERCA</button>
								</fieldset>
							</form>
						</div>
						<div ng-show="bancario != null">
							<i class="icon-remove pull-right" ng-click="bancario = null"></i>
							<h5>Bancario Selezionato</h5>
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
					</div>
					<div class="well well-small" style="background-color: white">
						<div ng-show="cliente == null">
							<form ng-submit="doSearchCliente()" class="form-search">
								<fieldset>
									<h5>Ricerca Cliente</h5>
									<input type="text" placeholder="cognome nome"
										ng-model="nomeCognomeCliente">
									<button class="btn btn-info " type="button"
										ng-click="doSearchCliente()" ng-show="nomeCognomeCliente">CERCA</button>
								</fieldset>
							</form>
						</div>
						<div ng-show="cliente != null">
							<i class="icon-remove pull-right" ng-click="removeCliente()"></i>
							<h5>Cliente Selezionato</h5>
							<div>
								<div class="row-fluid">
									<div class="span5">Nome</div>
									<div class="span7">{{cliente.nome}} {{cliente.cognome}}</div>
								</div>
								<div class="row-fluid">
									<div class="span5">Codice Fiscale</div>
									<div class="span7">{{cliente.codiceFiscale}}</div>
								</div>
							</div>
						</div>
					</div>
					<div class="well well-small" style="background-color: white">
						<div ng-show="attivita.polizza == null">
							<form ng-submit="doSearchPolizza()" class="form-search">
								<fieldset>
									<h5>Polizza</h5>
									<input type="text" placeholder="numero"
										ng-model="numeroPolizza"> <input type="text"
										placeholder="targa" ng-model="targa">
									<button class="btn btn-info " type="submit"
										ng-click="doSearchPolizza()" ng-show="numeroPolizza || targa">CERCA</button>
								</fieldset>
							</form>
						</div>
						<div ng-show="attivita.polizza != null">
							<i class="icon-remove pull-right" ng-click="removePolizza()"></i>
							<h5>Polizza Selezionata</h5>
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
					</div>
					<div class="well well-small attivita"
						style="background-color: white">
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