<%-- Written by Ismael Heredia in the year 2016 --%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:set var="context" value="${pageContext.request.contextPath}" />

<jsp:include page="includes/Header.jsp"/>

<jsp:include page="FormBuscadorUsuarios.jsp"/>

<div class="panel contenedor panel-default">
    <div class="panel-heading">Editando al usuario ${Usuario.nombre}</div>
    <div class="panel-body">

        <form:form class="form-horizontal" role="form" method="post" action="${context}/administracion/usuarios/editar" commandName="Usuario">
            <fieldset>
                <legend>Datos</legend>
                <form:hidden  path="id_usuario" />
                <div class="form-group" name="form-group-nombre">
                    <label for="inputNombre" class="col-lg-2 control-label">Nombre usuario</label>
                    <div class="col-lg-10">
                        <form:input path="nombre" class="form-control" id="inputNombre" placeholder="Ingrese nombre usuario" type="text" readonly="true"/>
                    </div>
                </div>

                <div class="form-group" name="form-group-password">
                    <label for="inputPrecio" class="col-lg-2 control-label">Password</label>
                    <div class="col-lg-10">
                        <input name="password" class="form-control" id="inputPassword" placeholder="Ingrese password" type="password" readonly="true"/>
                    </div>
                </div>

                <div class="form-group" name="form-group-tipo">
                    <label for="select" class="col-lg-2 control-label">Tipo</label>
                    <div class="col-lg-10">
                        <form:select class="form-control" id="select" path="tipo">
                            <form:option value="2" label="Usuario" />
                            <form:option value="1" label="Administrador" />
                        </form:select>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary center-block" name="editar_usuario" id="editar_usuario">Editar</button>
                </div>

            </fieldset>
        </form:form>
    </div>
</div>

<jsp:include page="includes/Footer.jsp"/>