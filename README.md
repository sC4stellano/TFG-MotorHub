# TFG-MotorHub
Proyecto final del ciclo DAM: aplicación móvil Android para consultar información de campeonatos, carreras, pilotos y equipos de deportes de motor.

## Índice

- Introducción  
- Objetivos del proyecto  
- Tecnologías y herramientas utilizadas  
- Tipo de proyecto  
- Temática del proyecto  
- Planificación y Kanban board  
- Estado actual del proyecto  

## Introducción

MotorHub es una aplicación móvil para Android pensada para aficionados a los deportes de motor que quieren consultar de forma rápida calendarios, resultados y estadísticas de diferentes campeonatos. La idea es agrupar en una sola app información que normalmente está dispersa en varias páginas o aplicaciones oficiales.

El proyecto se desarrolla como Trabajo de Fin de Ciclo de Desarrollo de Aplicaciones Multiplataforma (DAM), con el objetivo de integrar conocimientos de bases de datos, desarrollo backend y desarrollo de aplicaciones móviles.

## Objetivos del proyecto

- Diseñar y crear una base de datos relacional que modele campeonatos, carreras, pilotos, equipos y resultados.  
- Implementar un backend con Spring Boot que exponga una API REST para consumir estos datos desde la app móvil.  
- Desarrollar una aplicación Android en Kotlin que permita al usuario consultar calendarios, resultados y estadísticas de forma sencilla y visual.  
- Planificar y gestionar el desarrollo del proyecto utilizando un tablero Kanban durante todo el curso.  

## Tecnologías y herramientas utilizadas

Para el desarrollo de este proyecto se ha elegido Kotlin como lenguaje principal para la aplicación Android, ya que es un lenguaje moderno recomendado por Google, permite escribir menos código que Java manteniendo el rendimiento y la interoperabilidad con sus librerías, y está muy orientado al desarrollo móvil actual.

En el backend se utilizará Spring Boot sobre la plataforma Java para crear APIs REST, aprovechando su autoconfiguración, la integración sencilla con seguridad, la compatibilidad con pruebas automatizadas y la posibilidad de generar ejecutables independientes listos para desplegar. Como sistema gestor de base de datos se ha elegido MySQL, por ser una solución relacional muy extendida, de código abierto, con buen rendimiento y fiabilidad, y ampliamente utilizada en entornos educativos y profesionales.

Para la gestión del proyecto se utilizará Trello como tablero Kanban, organizando las tareas en las columnas Pendiente, En progreso, En revisión y Completado, lo que permite visualizar el flujo de trabajo y planificar el curso completo. Además, se usará Git y GitHub como sistema de control de versiones para mantener el historial de cambios, trabajar por sprints y documentar la evolución de la aplicación.

## Tipo de proyecto

El proyecto se plantea como una aplicación móvil para Android, en lugar de una aplicación de escritorio o exclusivamente web, porque el consumo de contenido sobre deportes de motor se realiza principalmente desde dispositivos móviles, donde los usuarios consultan resultados y noticias en cualquier momento. Este enfoque móvil permite ofrecer funcionalidades como acceso rápido desde el icono de la app y notificaciones de próximas carreras, aprovechando las capacidades del teléfono.

Elegir una app Android nativa también encaja con los objetivos formativos del ciclo DAM, ya que permite integrar desarrollo móvil, consumo de APIs REST y diseño de interfaces modernas, trabajando con una arquitectura cliente–servidor similar a la que se utiliza en proyectos reales.

## Temática del proyecto

La temática elegida es una aplicación de deportes de motor similar a las aplicaciones oficiales de Fórmula 1 o MotoGP, pero desarrollada desde cero como proyecto propio. El objetivo es ofrecer en una sola app información sobre campeonatos, carreras, pilotos y equipos, permitiendo consultar calendarios, resultados y estadísticas de forma centralizada y visual.

Los deportes de motor generan gran cantidad de información antes, durante y después de cada carrera (horarios, resultados, clasificaciones, noticias), por lo que una app que agregue y organice estos datos tiene una utilidad clara para el usuario y proporciona un dominio de datos lo bastante rico como para practicar diseño de base de datos, construcción de servicios REST y creación de una interfaz Android atractiva.

## Planificación y Kanban board

La planificación del proyecto se ha organizado en sprints utilizando un tablero Kanban en Trello con las listas: Pendiente, En progreso, En revisión y Completado. En él se han distribuido las tareas principales del curso en tres grandes bloques: Sprint 1 – Inicio y base de datos, Sprint 2 – Backend y Sprint 3 – App.

En la documentación del proyecto se incluirán capturas de este tablero y el enlace público de Trello para que pueda consultarse online la planificación detallada y el estado de las tareas en cada momento.

## Estado actual del proyecto

En este momento se encuentran en marcha las tareas del Sprint 1, centradas en la definición de la idea, la elección de tecnologías y la creación del modelo de base de datos con MySQL. En sprints posteriores se desarrollarán el backend con Spring Boot y la aplicación Android en Kotlin hasta completar una primera versión funcional de MotorHub.
