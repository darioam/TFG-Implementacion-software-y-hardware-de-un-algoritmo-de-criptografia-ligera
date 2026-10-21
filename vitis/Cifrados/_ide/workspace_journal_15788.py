# 2026-04-02T14:11:38.497182800
import vitis

client = vitis.create_client()
client.set_workspace(path="Cifrados")

comp = client.create_hls_component(name = "cifrador_basico_unroll",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll\hls_config.cfg")

cfg.set_values(key="syn.file", values=["./Cifrador.cpp"])

cfg.set_values(key="syn.file", values=[])

cfg.set_values(key="syn.blackbox.file", values=[])

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.create_hls_component(name = "cifrafor_basico_pipe",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrafor_basico_pipe\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrafor_basico_pipe/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_pipe")

comp = client.get_component(name="cifrafor_basico_pipe")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="cifrador_basico_unroll")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp = client.get_component(name="cifrador_basico")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="cifrador_basico_unroll")
comp.run(operation="PACKAGE")

comp = client.create_hls_component(name = "cifrador_basico_unroll_4",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_basico_unroll_8",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_basico_unroll_10",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_basico_unroll_20",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_basico_unroll_31",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_basico_unroll_2",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_basico_unroll_16",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_basico_pre",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "hls_basico_unroll_pre",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_paralelo",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_paralelo_pre",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_hls_component(name = "cifrador_paralelo_broad",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll_4\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll_2\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll_8\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll_16\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll_10\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll_20\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_pre\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.get_component(name="cifrador_basico_pre")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_pre/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_pre")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll_10/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_10")

comp = client.get_component(name="cifrador_basico_unroll_10")
comp.run(operation="SYNTHESIS")

cfg.set_value(key="part", value="xc7z020clg400-1")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll_16/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_16")

comp = client.get_component(name="cifrador_basico_unroll_16")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll_2/hls_config.cfg")

cfg.set_value(key="part", value="xc7z020clg400-1")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_2")

comp = client.get_component(name="cifrador_basico_unroll_2")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll_20/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_20")

comp = client.get_component(name="cifrador_basico_unroll_20")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\cifrador_basico_unroll_31\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll_31/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_31")

comp.run(operation="CO_SIMULATION")

comp = client.get_component(name="cifrador_basico_unroll_31")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll_4/hls_config.cfg")

cfg.set_value(key="part", value="xc7z020clg400-1")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_4")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_4")

comp = client.get_component(name="cifrador_basico_unroll_4")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/cifrador_basico_unroll_8/hls_config.cfg")

cfg.set_value(key="part", value="xc7z020clg400-1")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_8")

comp = client.get_component(name="cifrador_basico_unroll_8")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="cifrador_basico_unroll_20")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

client.delete_component(name="cifrador_paralelo_pre")

vitis.dispose()

