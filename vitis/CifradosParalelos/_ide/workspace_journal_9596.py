# 2026-04-02T20:50:12.797943800
import vitis

client = vitis.create_client()
client.set_workspace(path="CifradosParalelos")

comp = client.create_hls_component(name = "cifrador_paralelo",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo\hls_config.cfg")

cfg.set_values(key="syn.file", values=["./Cifrador.cpp"])

cfg.set_values(key="syn.file", values=[])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.get_component(name="cifrador_paralelo")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrador_paralelo_8",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_8\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_8/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo")

comp = client.get_component(name="cifrador_paralelo_8")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_8\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp", "cifrador.h"])

cfg.set_values(key="tb.file", values=["test.cpp"])

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrador_paralelo_16",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_16\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_16/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_16")

comp = client.get_component(name="cifrador_paralelo_16")
comp.run(operation="SYNTHESIS")

comp.run(operation="IMPLEMENTATION")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_8/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_8")

comp = client.get_component(name="cifrador_paralelo_8")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrado_paralelo_4",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrado_paralelo_4\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrado_paralelo_4/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_4")

comp = client.get_component(name="cifrado_paralelo_4")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrador_paralelo_32",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_32\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_32/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_32")

comp = client.get_component(name="cifrador_paralelo_32")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrador_paralelo_pre_4",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_pre_4\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_pre_4/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_pre_4")

comp = client.get_component(name="cifrador_paralelo_pre_4")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrador_paralelo_pre_8",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_pre_8\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_pre_8/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_pre_8")

comp = client.get_component(name="cifrador_paralelo_pre_8")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrador_paralelo_stream",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\CifradosParalelos\cifrador_paralelo_stream\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/CifradosParalelos/cifrador_paralelo_stream/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_paralelo_stream")

comp = client.get_component(name="cifrador_paralelo_stream")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

