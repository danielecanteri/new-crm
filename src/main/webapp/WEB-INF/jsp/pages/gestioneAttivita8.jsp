<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en" ng-app>
<jsp:include page="../fragments/headTag.jsp" />
<script type="text/javascript">
	function PageController($scope, $http) {
		$scope.attivita = {};
		$scope.attivitaSelected = null;

		$scope.cliente = {
			nome : 'Mario',
			cognome : 'Rossi',
			codiceFiscale : 'MRSRCM74M48L781U',
			polizze : [ {
				numero : 12345,
				prodotto : 'SOLO UNA'
			}, {
				numero : 45678,
				prodotto : 'TUTTO TONDO'
			} ]
		};

		$scope.bancario = {
			nome : 'Alessandro',
			cognome : 'Avesani',
			banca : 'Banca Popolare Emilia Romagna',
			filiale : 'Verona Centro',
			codiceFiliale : '01100'
		}

		$scope.polizza = {
			numero : '755489558123',
			prodotto : '626 Tutto tondo'
		}

		$scope.menu = [ {
			active : true
		}, {
			active : false
		}, {
			active : false
		}, {
			active : false
		} ];

		$scope.mieAttivita = function() {
			$http.get('../attivita/mylistasjson2').success(function(data) {
				$scope.attivita = data;
			});
		};

		$scope.recentiAttivita = function() {
			$http.get('../attivita/my-recenti').success(function(data) {
				$scope.attivita = data;
			});
		};

		$scope.tutteAttivita = function() {
			$scope.attivita = {};
		};

		$scope.selectMenu = function(idx) {
			angular.forEach($scope.menu, function(value, key) {
				value.active = false;
			});
			$scope.menu[idx].active = true;
		}

		$scope.selectAttivita = function(attivita) {
			$scope.attivitaSelected = attivita;
			$scope.page.tipo = 'detail';
		}

		$scope.sxTabs = [ {
			title : 'Attività',
			template : 'attivita-edit',
			active : true
		} ];

		$scope.nuovaPratica = function() {
			$scope.sxTabs[0].active = false;
			$scope.sxTabs.push({
				title : 'Pratica',
				template : 'pratica-new',
				active : true
			});
		}

		$scope.selectSxTab = function(tab) {
			$scope.sxTabs.forEach(function(item) {
				item.active = false;
			});
			tab.active = true;
		}

		$scope.mieAttivita();

		$scope.page = {
			tipo : "master"
		};

		$scope.leftTabs = [
				{
					id : 'nuovoContatto',
					title : 'Contatto',
					active : true,
					template : '<spring:url value="/" />pages/contatto-no-richiesta-view-accordion4'
				},
				{
					id : 'nuovaRichiesta',
					title : 'Richiesta',
					active : true,
					template : '<spring:url value="/" />pages/richiesta-view'
				}, {
					id : 'nuovaAttivita',
					title : 'Attività',
					active : true,
					template : '<spring:url value="/" />pages/attivita-view'
				}, {
					id : 'infoRicontatto',
					title : 'Info Ricontatto',
					active : true,
					template : '<spring:url value="/" />pages/ricontatto-new'
				} ];
		$scope.selectLeftTab = function(id) {

			$scope.leftTabs.forEach(function(tab) {
				if (id == tab.id)
					tab.active = !tab.active;
			});
		}

	}
	function NuovoIndirizzoController($scope, $http) {
		$scope.recapitiTelefonici = [ {} ];

		$scope.aggiungiRecapitoTelefonico = function() {
			$scope.recapitiTelefonici.push({});
		}

		$scope.rimuoviRecapitoTelefonico = function(idx) {
			$scope.recapitiTelefonici.splice(idx, 1);
		}
	}
</script>
<body ng-controller="PageController">
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid"
		ng-class="{left: attivitaSelected != null}"
		ng-show="page.tipo == 'master'">
		<div class="row-fluid">
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
						<ul class="nav">
							<li ng-class="{active : menu[0].active}"><a href="#"
								ng-click="selectMenu(0);mieAttivita()">Mie&nbsp;<span
									class="badge pull-right">10</span></a></li>
							<li ng-class="{active : menu[1].active}"><a href="#"
								ng-click="selectMenu(1);recentiAttivita()">Da assegnare</a></li>
							<li ng-class="{active : menu[2].active}"><a href="#"
								ng-click="selectMenu(1);recentiAttivita()">Recenti</a></li>
							<li ng-class="{active : menu[3].active}"><a href="#"
								ng-click="selectMenu(2);tutteAttivita()">Tutte</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<div class="row-fluid">
			<div class="span12">
				<table class="table table-striped table-bordered table-hover"
					ng-show="attivita.length > 0">
					<thead>
						<tr>
							<th>N. attività</th>
							<th>Tipo</th>
							<th>Argomento</th>
							<th>Stato</th>
							<th>Apertura</th>
							<th>N. polizza</th>
							<th>Cliente</th>
							<th>Pratica collegata</th>
							<th>Banca</th>
							<th>Prodotto</th>
							<th>Richiesta</th>
							<th>Solleciti</th>
							<th>Priorità</th>
							<th></th>
						</tr>
					</thead>
					<tr ng-repeat="attivita in attivita">
						<td>{{attivita.numero}}</td>
						<td>{{attivita.tipo}}</td>
						<td>{{attivita.argomento}}</td>
						<td>{{attivita.stato}}</td>
						<td>{{attivita.apertura | date :'dd-MM-yyyy'}}</td>
						<td>{{attivita.numeroPolizza}}</td>
						<td>{{attivita.cliente}}</td>
						<td>{{attivita.praticaCollegata}}</td>
						<td>{{attivita.banca}}</td>
						<td>{{attivita.prodotto}}</td>
						<td>{{attivita.richiesta}}</td>
						<td>{{attivita.solleciti}}</td>
						<td>{{attivita.priorita}}</td>
						<td><button class="btn btn-success btn-small" type="button"
								ng-click="selectAttivita(attivita)">SELEZIONA</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="container-fluid" ng-show="page.tipo == 'detail'">
		<a href="#" ng-click="page.tipo = 'master'" class="pull-right">Torna
			alla ricerca</a>
		<div class="row-fluid">
			<div class="span5">
				<div class="well well-small">
					<div class="accordion" id="accordion">
						<div class="accordion-group" ng-repeat="tab in leftTabs">
							<div class="accordion-heading">
								<a class="accordion-toggle" ng-click="selectLeftTab(tab.id)">{{tab.title}}</a>
							</div>
							<div id="collapse_{{tab.id}}" class="accordion-body collapse"
								ng-class="{in: tab.active}">
								<div class="accordion-inner">
									<div ng-include="tab.template" ng-show="!tab.loading"></div>
								</div>
							</div>

						</div>
					</div>

					<div class="pull-right">
						<button class="btn btn-success" ng-click="console.log('saving')"
							ng-show="tipoContatto != null">SALVA</button>
					</div>

					<div>&nbsp:</div>
					<div>&nbsp:</div>

				</div>

			</div>
			<div class="span7">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#">Cliente</a></li>
					<li><a href="#">Polizza</a></li>
				</ul>
				<div ng-include="'cliente-view'"></div>
			</div>
		</div>
	</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
