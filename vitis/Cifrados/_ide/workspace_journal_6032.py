# 2026-04-02T20:38:28.367786500
import vitis

client = vitis.create_client()
client.set_workspace(path="Cifrados")

client.delete_component(name="cifrador_paralelo")

client.delete_component(name="cifrador_paralelo_broad")

client.delete_component(name="componentName")

cfg = client.get_config_file(path="C:\Users\Dario\Documents\TFG\Vitis\Cifrados\hls_basico_unroll_pre\hls_config.cfg")

cfg.set_values(key="syn.file", values=["Cifrador.cpp"])

comp = client.get_component(name="cifrador_basico_unroll_pre")
comp.run(operation="SYNTHESIS")

cfg = client.get_config_file(path="/c:/Users/Dario/Documents/TFG/Vitis/Cifrados/hls_basico_unroll_pre/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="cifrador_basico_unroll_pre")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp = client.get_component(name="cifrador_basico_pre")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

