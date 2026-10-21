# 2026-05-02T20:59:42.938393900
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosParalelos")

comp = client.create_hls_component(name = "cifrador_paralelo_stream_reduccion",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_stream_reduccion\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.get_component(name="cifrador_paralelo_stream_reduccion")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_stream_reduccion/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_stream_prueba")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

