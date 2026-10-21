# 2026-04-05T11:36:20.228106900
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosSerializados")

comp = client.create_hls_component(name = "cifrado_serial",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosSerializados\cifrado_serial\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.get_component(name="cifrado_serial")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosSerializados/cifrado_serial/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_serial")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosSerializados\cifrado_serial\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp", "cifrador_serial.h"])

cfg.set_values(key="tb.file", values=["test.cpp"])

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

