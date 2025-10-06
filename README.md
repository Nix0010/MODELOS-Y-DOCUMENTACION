 **DOCUMENTACIÓN DEL PROYECTO: SISTEMA DE GESTIÓN ACADÉMICA**
 
 Integrantes: 
 Valery Gabriela Alarcon Peña 
 
 Mary Fernanda Rodriguez Morales 

 Profesor: 
 Ing. Hely Suarez Marin

 
**RESUMEN EJECUTIVO**

El Sistema de Gestión Académica es una aplicación multiplataforma desarrollada en Python, diseñada para funcionar tanto en escritorio (mediante Qt Creator / PyQt) como en dispositivos móviles (usando Kivy).
El sistema permite a los estudiantes organizar sus actividades académicas desde cualquier lugar, sincronizando información entre versiones y almacenando los datos localmente mediante SQLite.

El SGA integra funciones de gestión de tareas, horarios, calificaciones, recordatorios y personalización de la interfaz, ofreciendo una experiencia moderna y accesible.
Su propósito es mejorar la productividad, el control académico y la planificación del estudiante mediante una interfaz amigable y adaptable a distintos entornos.


**JUSTIFICACIÓN**

Los estudiantes actuales dependen de múltiples herramientas digitales para su vida académica. Sin embargo, la dispersión de información entre diferentes aplicaciones provoca pérdida de tiempo y desorganización.
El Sistema de Gestión Académica surge como una solución integral que permite gestionar desde un solo entorno todas las actividades académicas del estudiante, ya sea desde su computadora o su teléfono móvil.

El uso de Python junto con SQLite, PyQt y Kivy garantiza portabilidad, facilidad de uso y funcionamiento tanto offline como online (en versiones futuras con sincronización en la nube).
La aplicación está pensada para brindar autonomía, privacidad y una organización eficaz de los recursos académicos personales.

**PROBLEMA**

En la actualidad, muchos estudiantes enfrentan dificultades para organizar y gestionar sus actividades académicas de manera eficiente.
El uso de múltiples herramientas digitales —como calendarios, blocs de notas, hojas de cálculo o recordatorios dispersos— genera desorganización, pérdida de información y falta de seguimiento del rendimiento académico.

Además, los estudiantes que alternan entre dispositivos (computador y teléfono móvil) suelen perder continuidad en la planificación de sus tareas, ya que no existe una herramienta unificada que centralice la gestión de horarios, calificaciones, tareas y recordatorios de forma accesible, rápida y sin conexión a internet.
Esta situación afecta la productividad, el rendimiento académico y la gestión del tiempo de los estudiantes.

**SOLUCIÓN**

La propuesta consiste en desarrollar un Sistema de Gestión Académica (SGA) multiplataforma (para escritorio y dispositivos móviles) que permita a los estudiantes organizar toda su información académica desde un solo lugar.

El sistema está desarrollado en Python, utilizando PyQt para la versión de escritorio y Kivy para la versión móvil, con una base de datos local SQLite que asegura la persistencia y seguridad de los datos.

El SGA ofrece las siguientes funcionalidades principales:

Registro y control de tareas académicas con fechas de entrega.

Gestión de calificaciones y cálculo automático de promedios.

Organización visual de horarios de clase.

Creación de recordatorios personalizados con fecha y hora.

Personalización de la interfaz según las preferencias del usuario.

Con esta solución, el estudiante podrá acceder de manera rápida y sencilla a su información académica, mantener un seguimiento constante de su progreso y mejorar la administración de su tiempo y responsabilidades.

**OBJETIVOS**


 Objetivo General

Desarrollar una aplicación multiplataforma en Python (para escritorio y móvil) que permita a los estudiantes gestionar de forma integrada sus tareas, calificaciones, horarios, recordatorios y configuraciones personales.

Objetivos Específicos

Diseñar una interfaz adaptable para escritorio y dispositivos móviles.

Implementar una base de datos relacional SQLite con llaves primarias y foráneas.

Incorporar módulos funcionales para tareas, calificaciones, horarios y recordatorios.

Elaborar diagramas UML que representen la estructura y el comportamiento del sistema.

Garantizar la persistencia y seguridad de los datos locales.

Optimizar la experiencia del usuario con navegación fluida y diseño moderno.


**ALCANCE DEL PROYECTO**

El SGA permite a los estudiantes gestionar integralmente su información académica.
Las funcionalidades abarcan:

Registro, edición y eliminación de tareas.

Control de calificaciones con cálculo automático de promedios.

Gestión visual de horarios académicos.

Creación de recordatorios personalizados.

Personalización de temas, colores y apariencia de la interfaz.

El sistema opera localmente sin conexión a internet, pero está diseñado para futuras integraciones con servicios en la nube o plataformas institucionales.


**METODOLOGÍA DE DESARROLLO**

El desarrollo del SGA utiliza una metodología Ágil híbrida, basada en principios de Scrum y Cascada mejorada, para permitir una evolución flexible del sistema.

Fases principales:

Análisis de requerimientos del usuario.

Diseño estructural mediante diagramas UML y modelo entidad-relación.

Implementación en Python, utilizando PyQt (escritorio) y Kivy (móvil).

Pruebas y depuración en entornos multiplataforma.

Documentación técnica y ejecutiva.


**REQUERIMIENTOS DEL SISTEMA**
Requerimientos Funcionales

RF01: Registrar, modificar y eliminar tareas.

RF02: Asignar tareas a materias específicas.

RF03: Registrar calificaciones y calcular promedios.

RF04: Gestionar horarios de clases.

RF05: Configurar recordatorios con fecha y hora.

RF06: Personalizar la apariencia de la aplicación.

RF07: Almacenar datos en una base de datos local SQLite.

RF08: Permitir sincronización manual entre versiones de escritorio y móvil (exportación/importación).

 Requerimientos No Funcionales

RNF01: Compatibilidad con Windows, Linux, macOS y Android.

RNF02: Tiempo de respuesta inferior a 2 segundos.

RNF03: Diseño adaptable (responsive) para distintas resoluciones.

RNF04: Interfaz intuitiva y accesible.

RNF05: Código modular y documentado.


**ARQUITECTURA DEL SISTEMA**

El SGA está estructurado bajo el patrón Modelo–Vista–Controlador (MVC):

Modelo: maneja la lógica de datos y la conexión con SQLite.

Vista: contiene la interfaz gráfica implementada con PyQt o Kivy.

Controlador: intermedia entre la vista y el modelo, gestionando los eventos y validaciones.

Este enfoque modular garantiza portabilidad, escalabilidad y facilidad de mantenimiento del código fuente.


**DIAGRAMAS UML**
Diagramas Estáticos

Diagrama de Clases: muestra las clases principales y sus relaciones.

Diagrama de Objetos: ejemplifica instancias del sistema (por ejemplo, una tarea concreta).

Diagrama de Componentes: organiza los módulos funcionales (Tareas, Calificaciones, Recordatorios).

Diagrama de Paquetes: agrupa los archivos del proyecto en models, controllers, views, database.

Diagrama de Despliegue: representa la instalación en PC o móvil con base de datos local.

Diagrama de Estructura Compuesta: detalla la estructura interna del módulo de gestión de asignaturas.

Diagramas Dinámicos

Casos de Uso: representa al actor “Estudiante” y sus interacciones (gestionar tareas, ver calificaciones, configurar recordatorios).

Secuencia: muestra la comunicación entre vista, controlador y base de datos.

Comunicación: describe cómo los objetos colaboran al registrar una nueva tarea.

Actividades: representa el flujo de acciones al agregar o editar datos.

Estados: muestra las etapas de una tarea (Pendiente → En progreso → Finalizada).

Tiempo: indica el comportamiento temporal de recordatorios y eventos programados.



**CRONOGRAMA GENERAL**

<img width="2379" height="1380" alt="image" src="https://github.com/user-attachments/assets/27b84c58-cd3e-4464-8a8f-54ca58d35fb7" />

Fase	Actividad	Duración	Responsable

1	Análisis de requerimientos	2 semanas	

2	Diseño UML y modelo ER	2 semanas	

3	Implementación multiplataforma	4 semanas	

4	Pruebas y validación	2 semanas	

5	Documentación y entrega	1 semana

**CONCLUSION**

El Sistema de Gestión Académica (SGA) representa una herramienta práctica, moderna y funcional para el entorno educativo actual.
Su diseño multiplataforma permite que los estudiantes gestionen su vida académica desde cualquier dispositivo, con acceso rápido y sin necesidad de conexión a internet.

El uso de Python, PyQt, Kivy y SQLite demuestra la flexibilidad de las tecnologías libres para el desarrollo de aplicaciones educativas potentes, seguras y accesibles.
Los diagramas UML y el modelo entidad–relación proporcionan una base sólida para futuras ampliaciones del sistema, garantizando su mantenimiento y escalabilidad.
