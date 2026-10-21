# Implementación software y hardware de un algoritmo de criptografía ligera

Este repositorio contiene el Trabajo de Fin de Grado (TFG) **«Implementación software y hardware de un algoritmo de criptografía ligera»**, correspondiente a la modalidad Tipo A del Grado en Ingeniería Informática de la Universidade de Santiago de Compostela (USC).

## Descripción

El incremento de dispositivos IoT y sistemas embebidos ha impulsado el desarrollo de algoritmos de criptografía ligera capaces de proporcionar mecanismos de seguridad con un bajo consumo de recursos. En este contexto, los cifrados basados en redes de sustitución y permutación (*Substitution-Permutation Networks*, SPN) constituyen una alternativa adecuada para entornos con limitaciones de memoria, potencia y capacidad de procesamiento.

El objetivo del trabajo es analizar, diseñar e implementar un algoritmo de criptografía ligera sobre la plataforma **PYNQ-Z2**, basada en un sistema en chip (SoC) que integra un procesador ARM y una FPGA. Para ello, se desarrollaron implementaciones software en Python e implementaciones hardware mediante síntesis de alto nivel (*High-Level Synthesis*, HLS), con el fin de comparar ambas aproximaciones en términos de rendimiento, latencia, *throughput*, utilización de recursos y consumo energético.

El estudio parte de una implementación simplificada de un cifrado SPN de 32/64 bits, sobre la que se aplican diferentes técnicas de optimización, y posteriormente extiende la metodología al algoritmo de criptografía ligera **PRESENT-80**.

## Tecnologías y herramientas

- **Python:** implementación software de los algoritmos de cifrado.
- **PYNQ-Z2:** plataforma de desarrollo basada en SoC y FPGA.
- **Jupyter Notebook:** ejecución y validación de las implementaciones software.
- **Vitis HLS:** síntesis de alto nivel para generar bloques IP hardware.
- **Vivado:** integración de los bloques IP, configuración del sistema y generación del *bitstream*.

## Resultados

Los resultados muestran las ventajas de las implementaciones hardware frente a las software en términos de latencia y *throughput*, así como el impacto de las distintas optimizaciones sobre el rendimiento y el consumo de recursos de la FPGA.

Además, se obtuvieron bloques IP reutilizables e integrables en diseños basados en Vivado, y se desarrolló una demostración práctica de cifrado de datos reales para validar la aplicabilidad de la solución en sistemas embebidos.

## Memoria del TFG

La memoria completa del trabajo se encuentra en el siguiente documento:

**[Implementación software y hardware de un algoritmo de criptografía ligera.pdf](Implementación%20software%20y%20hardware%20de%20un%20algoritmo%20de%20criptografía%20ligera.pdf)**

