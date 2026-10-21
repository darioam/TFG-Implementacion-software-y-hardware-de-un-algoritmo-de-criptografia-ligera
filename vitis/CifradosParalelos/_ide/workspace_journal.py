# 2026-06-25T15:19:44.907535800
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosParalelos")

comp = client.create_hls_component(name = "cifrado_paralelo_32_ctr",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrado_paralelo_32_ctr\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.get_component(name="cifrado_paralelo_32_ctr")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrado_paralelo_32_ctr/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_32_ctr")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

