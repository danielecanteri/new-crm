
<div class="well well-small" style="background-color: white">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">Stato</div>
			<div class="span4">
				{{attivitaSelected.stato}}
			</div>
			<div class="span6"></div>
		</div>
		<div class="row-fluid">
			<div class="span2">Tipo</div>
			<div class="span4">
				{{attivitaSelected.tipo}}
			</div>
			<div class="span2">Pratica</div>
			<div class="span4">
				{{attivitaSelected.praticaCollegata}}
			</div>
		</div>
		<div class="row-fluid">
			<div class="span2">Apertura</div>
			<div class="span4">
				{{attivitaSelected.apertura|date:'dd-MM-yyyy'}}
			</div>
			<div class="span2">Chiusura</div>
			<div class="span4">
			</div>
		</div>
		<div class="row-fluid">
			<div class="span2">Assegnata a</div>
			<div class="span4">
				{{attivitaSelected.assegnata}}
			</div>
			<div class="span2">Creata da</div>
			<div class="span4">
				{{attivitaSelected.creataDa}}
			</div>
		</div>
		<div class="row-fluid">
			<div class="span2">Argomento</div>
			<div class="span4">
				{{attivitaSelected.argomento}}
			</div>
			<div class="span6"></div>
		</div>
		<div class="row-fluid">
			<div class="span2">
				<label>Note</label>
			</div>
			<div class="span10">
				<textarea style="width: 100%" rows="3" ng-model="$parent.$parent.note"></textarea>
			</div>
		</div>
	</div>
</div>
