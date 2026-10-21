# 2026-04-14T16:01:38.759374300
import vitis

client = vitis.create_client()
client.set_workspace(path="Cifrados")

comp = client.get_component(name="cifrador_basico_pre")
comp.run(operation="SYNTHESIS")

vitis.dispose()

