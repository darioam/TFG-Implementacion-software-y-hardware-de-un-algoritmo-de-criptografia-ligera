# 2026-04-26T12:52:51.288787700
import vitis

client = vitis.create_client()
client.set_workspace(path="Present")

comp = client.create_hls_component(name = "present",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Present\present\hls_config.cfg")

cfg.set_values(key="syn.file", values=["present"])

cfg.set_values(key="syn.file", values=["present", "present.h"])

cfg.set_values(key="tb.file", values=["tb_present.cpp"])

comp = client.get_component(name="present")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

cfg.set_values(key="syn.file", values=["present.cpp", "present.h"])

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Present/present/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="present")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

