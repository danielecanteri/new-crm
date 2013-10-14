
<style>
.white {
	background-color: white
}
</style>
<div class="well well-small" style="margin-bottom: 2px"
	ng-class="{white: bancario != null}">
	<div>
		<div ng-show="bancario != null">
			<div class="row-fluid">
				<div class="span3" style="min-height: 0px">
					<b>Bancario: </b>
				</div>
				<div>{{bancario.nome}} {{bancario.cognome}}, filiale di
					{{bancario.filiale}}, {{bancario.banca}}</div>
			</div>
		</div>
		<div ng-show="bancario == null">
			<i class="icon-plus pull-right"
				ng-click="collapsed.infoBancario = false"></i>
			<div class="row-fluid">
				<div class="span3" style="min-height: 0px">
					<b>Bancario: </b>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>
<div class="well well-small" style="margin-bottom: 2px"
	ng-class="{white: cliente != null}">
	<div>
		<div ng-show="cliente != null">
			<div class="row-fluid">
				<div class="span3" style="min-height: 0px">
					<b>Cliente: </b>
				</div>
				<div>{{cliente.nome}} {{cliente.cognome}},
					{{cliente.codiceFiscale}}</div>
			</div>
		</div>
		<div ng-show="cliente == null">
			<i class="icon-plus pull-right"
				ng-click="collapsed.infoCliente = false"></i>
			<div class="row-fluid">
				<div class="span3" style="min-height: 0px">
					<b>Cliente: </b>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>
<div class="well well-small" style="margin-bottom: 2px"
	ng-class="{white: attivita.polizza != null}">
	<div>
		<div ng-show="attivita.polizza != null">
			<div class="row-fluid">
				<div class="span3" style="min-height: 0px">
					<b>Polizza:</b>
				</div>
				<div>{{attivita.polizza.numero}}, prodotto
					{{attivita.polizza.prodotto}}</div>
			</div>
		</div>
		<div ng-show="attivita.polizza == null">
			<div class="row-fluid">
				<div class="span3" style="min-height: 0px">
					<b>Polizza: </b>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>