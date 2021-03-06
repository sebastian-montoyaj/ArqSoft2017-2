<%-- 
    Document   : TipoPago
    Created on : 16-sep-2017, 21:28:20
    Author     : C�sar
--%>


<div class="container">
    <div ng-if="response!=undefined" class="alert" ng-class="{'alert-danger':!response.estado,'alert-success':response.estado}">
        <span ng-bind="response.msj"></span>
    </div>
    <form>
        <h3>Crear/Editar Tipo Pago</h3>        
        <div class="form-group">
            <label>Codigo:</label>
            <input type="text" class="form-control" ng-model="tipoPago.codigo" placeholder="Codigo" maxlength="5">
        </div>          
        <div class="form-group">
            <label>Descripci�n:</label>
            <input type="text" class="form-control" ng-model="tipoPago.descripcion" placeholder="Descripci�n" maxlength="250">
        </div>
        <div class="form-group">
            <label>Tipo Pago:</label>
            <input type="text" class="form-control" ng-model="tipoPago.tipoPago" placeholder="Tipo Pago" maxlength="30">
        </div>
        
        <button type="button" class="btn btn-default" ng-click="post()"><span class="glyphicon glyphicon-floppy-save"></span> Crear</button>
        <button type="button" class="btn btn-default" ng-click="put()"><span class="glyphicon glyphicon-edit"></span> Editar</button>
        <button type="button" class="btn btn-default" ng-click="clean()"><span class="glyphicon glyphicon-trash"></span> Limpiar</button>
        
    </form>
    <h3>Lista de Tipos de Pago</h3>
    <div class="table-responsive">
        <table class="table table-hover" >
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Descripci�n</th>
                    <th>Tipo Pago</th>                    
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="item in listTipoPagos">
                    <td ng-bind="item.codigo"></td>
                    <td ng-bind="item.descripcion"></td>
                    <td ng-bind="item.tipoPago"></td>
                    <td>
                        <button type="button" class="btn btn-info btn-xs" ng-click="edit(item)"><span class="glyphicon glyphicon-edit" title="Editar"></span></button>
                        <button type="button" class="btn btn-danger btn-xs" ng-click="remove(item)"><span class="glyphicon glyphicon-remove" title="Eliminar"></span></button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
