<!DOCTYPE html>

<html>
<head>
  <title>Beego-CRUD</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>

<body>

  <h2>Kihui-DEV</h2>
  
  <table class="table">
      <thead>
        <tr>
          <th>Nombre</th>
          <th>Correo</th>
	  <th>Edad</th>
	  <th></th>
	  <th></th>
        </tr>
      </thead>
      <tbody>
        {{range $record := .records}}
        <tr>
          <td>{{$record.Nombre}} {{$record.App}} {{$record.Apm}}</td>
	  <td>{{$record.Correo}}</td>
	  <td>{{$record.Edad}}</td>
          <td><a href="/delete?id={{$record.Id}}">Eliminar</a></td>
	  <td><a href="/update?id={{$record.Id}}">Modificar</a></td>
        </tr>
        {{end}}
      </tbody>
  </table>
  
  <h3>Agregar usuario</h3>
  <form role="form" id="usuario" method="POST">
    Nombre：<input name="nombre" value="{{.Usuario.Nombre}}" type="text" />
    Apellido paterno：<input name="app" value="{{.Usuario.App}}" type="text" />
    Apellido materno：<input name="apm" value="{{.Usuario.Apm}}" type="text" />
    Correo electrónico：<input name="correo" value="{{.Usuario.Correo}}" type="text" />
    Edad：<input name="edad" value="{{.Usuario.Edad}}" type="text" />
    <input type="submit" value="Aceptar" />
  </form>
</body>
</html>


