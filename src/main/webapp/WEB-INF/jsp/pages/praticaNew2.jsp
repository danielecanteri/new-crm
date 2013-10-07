<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div ng-controller="NuovaPraticaController">
	<div class="well well-small" style="background-color: white">
		<div>
			<div class="row-fluid">
				<div class="span3">Tipo</div>
				<div class="span3">
					<select style="width: 100%">
						<option>Danni</option>
						<option>Vita</option>
					</select>
				</div>
				<div class="span3">Priorit�</div>
				<div class="span3">
					<select style="width: 100%">
						<option>Alta</option>
						<option selected="selected">Media</option>
						<option>Bassa</option>
					</select>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">Area</div>
				<div class="span3">
					<select style="width: 100%" ng-model="areapratica">
						<option></option>
						<option>generica</option>
						<option>variazione contrattuale</option>
						<option>Area 2</option>
					</select>
				</div>
				<div class="span3">Sub-Area</div>
				<div class="span3">
					<select style="width: 100%" ng-model="subareapratica">
						<option></option>
						<option ng-show="areapratica == 'generica'">generica</option>
						<option ng-show="areapratica == 'variazione contrattuale'"
							value="cambio-veicolo">cambio veicolo</option>
						<option ng-show="areapratica == 'variazione contrattuale'"
							value="variazione-anagrafica">variazione dati
							anagrafici</option>
					</select>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">Canale IN</div>
				<div class="span3">FAX</div>
				<div class="span3">Canale OUT</div>
				<div class="span3"></div>
			</div>
		</div>
	</div>
	<div class="well well-small" style="background-color: white"
		ng-show="subareapratica == 'cambio-veicolo'">
		<div ng-include="'<spring:url value="/" />pages/cambio-veicolo'"></div>
	</div>
	<div class="well well-small" style="background-color: white"
		ng-show="subareapratica == 'variazione-anagrafica'">
		<div ng-include="'<spring:url value="/" />pages/variazione-anagrafica'"></div>
	</div>
</div>