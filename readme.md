Webgrabplus configurado para movistar+
======================================

Contenedor de docker de [Webgrabplus][webgrabplus] configurado para obtener la guía de
movistar+ de modo incremental.

Dicho de otro modo, con un solo comando puedes descargar la guía de TV en
formato [Xml TV][xmltv], para utilizarla en programas como [Kodi][kodi] o
[Emby][emby].

Requisitos
----------

Para ejecutar esto necesitarás [docker][docker] en tu máquina.

Cómo ejecutarlo
---------------

Para ejecutarlo y descargar la guía en el directorio actual debes ejecutar:

~~~bash
docker run -it --rm -v $PWD:/data elboletaire/movistar-plus
~~~

Eso generará un fichero `guide.xml` en el directorio actual con la información
de los próximos 8 días. Al ser incremental, cada vez que ejecutes el comando
añadirá la nueva información sin borrar la anterior.

No obstante, recomiendo que crees un directorio donde contener el fichero
`guide.xml` para evitar problemas de permisos:

~~~bash
mkdir tv-guide
docker run -it --rm -v $PWD/tv-guide:/data elboletaire/movistar-plus
~~~

Licencia
--------

Copyright (C) 2017 Òscar Casajuana <elboletaire@underave.net>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

[webgrabplus]: http://webgrabplus.com/
[xmltv]: http://wiki.xmltv.org/index.php/XMLTVFormat
[kodi]: https://kodi.tv
[emby]: https://emby.media
[docker]: https://docker.com
