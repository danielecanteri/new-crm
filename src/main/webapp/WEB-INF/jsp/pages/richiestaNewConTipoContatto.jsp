<style>
.tipoContatto .active {
	font-weight: bold;
}
.tipoContatto .disabled {
	font-style: italic;
}
</style>
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
						<textarea rows="3" ng-model="$parent.$parent.descrizioneContatto"></textarea>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span2">
						<label>Commenti</label>
					</div>
					<div class="span10">
						<textarea rows="3" ng-model="$parent.$parent.commentiContatto"></textarea>
					</div>
				</div>
			</div>
		</fieldset>
	</form>
</div>
<div>
	<div class="btn-group tipoContatto"
		style="margin: auto; display: block; width: 200px">
		<button class="btn"
			ng-class="{active: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto == 'sollecito', disabled: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto != 'sollecito'}"
			ng-click="$parent.$parent.tipoContatto = 'sollecito'; sollecito(polizza)">Sollecito</button>
		<button class="btn"
			ng-class="{active: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto == 'attivita', disabled: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto != 'attivita'}"
			ng-click="$parent.$parent.tipoContatto = 'attivita'; nuovoTask(polizza)">Attività</button>
		<button class="btn"
			ng-class="{active: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto == 'pratica', disabled: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto != 'pratica'}"
			ng-click="$parent.$parent.tipoContatto = 'pratica'; nuovaPratica(polizza)">Pratica</button>
	</div>
</div>
